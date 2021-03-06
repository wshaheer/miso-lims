#!/bin/bash

set -e
# Get script directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/context.properties"
# Check java installation and version
if command -v java >/dev/null 2>&1; then
	echo "Java installed"
else
	echo >&2 "Java not installed"
	exit 1
fi
JAVA_VERSION=`java -version 2>&1 | grep "java version" | awk '{print $3}' | tr -d \" | awk '{split($0, array, ".")} END{print array[2]}'`
if [ "$JAVA_VERSION" -ge 7 ]; then
	echo "Java version OK"
else
	echo "JDK version 7 or greater is requried"
	exit 1
fi
# Check maven installation and version
if command -v mvn >/dev/null 2>&1; then
	echo "Maven installed"
else
	echo >&2 "Maven not installed"
	exit 1
fi
MAVEN_VERSION=`java -version 2>&1 | grep "java version" | awk '{print $3}' | tr -d \" | awk '{split($0, array, ".")} END{print array[2]}'`
if [ "$MAVEN_VERSION" -ge 7 ]; then
	echo "Maven version OK"
else
	echo "Maven version 2 or greater is requried"
	exit 1
fi
# Check mysql is installed and running
if pgrep mysql >/dev/null 2>&1; then
	echo "MySQL running"
else
	echo "MySQL not running"
	exit 1
fi
echo "If program exits, should not reach here"
if [ -d "${DIR}/ROOT" ]; then
	echo "ROOT directory already exits"
	# Application Context (edit and add to META-INF)
	echo Editing context.xml
	sed -i -r \
		-e 's|(username=)[^=]*$|\1'\"$MYSQL_USER\"'|1' \
		-e 's|(password=)([^= >][^ />]*)|\1'\"$MYSQL_PASS\"'|1' \
		"$DIR/ROOT/META-INF/context.xml"
else
	# Unpack ROOT.war
	unzip "$DIR/../miso-web/target/ROOT.war" -d "${DIR}/ROOT"
	# Application Context (edit and add to META-INF)
	echo Editing context.xml
	sed -r \
		-e 's|(username=)[^=]*$|\1'\"$MYSQL_USER\"'|1' \
		-e 's|(password=)([^=][^ />]*)|\1'\"$MYSQL_PASS\"'|1' \
		<"$DIR/context.xml" >"$DIR/ROOT/META-INF/context.xml"
fi
# MISO Storage Path (edit in WEB-INF/classes)
echo Editing miso.properties
sed -i -r 's|(baseDirectory:)[^:]*$|\1'"$STORAGE_PATH"'/|1' "$DIR/ROOT/WEB-INF/classes/miso.properties"
sed -i -r 's|(fileStorageDirectory:)[^:]*$|\1'"$STORAGE_PATH/files"'/|1' "${DIR}/ROOT/WEB-INF/classes/miso.properties"
sed -i -r 's|(submissionStorageDirectory:)[^:]*$|\1'"${STORAGE_PATH}/files/submission"'/|1' "${DIR}/ROOT/WEB-INF/classes/miso.properties"
# Package Application
if [ -e "${DIR}/ROOT.war" ]; then
	jar ufv "ROOT.war" -C "${DIR}/ROOT" .
else
	jar cfv "ROOT.war" -C "${DIR}/ROOT" .
fi
curl --user "$TOMCAT_USER:$TOMCAT_PASS" --upload-file "ROOT.war" "http://$TOMCAT_SERVER/manager/text/deploy?path=/ROOT&update=true"
