#!/bin/bash
set -e
source script.properties
# Check java installation and version
if command -v java >/dev/null 2>&1; then
	echo "Java installed"
else
	echo >&2 "Java not installed"
	exit 1
fi
JAVA_VERSION=`java -version 2>&1 | grep "java version" | awk '{print $3}' | tr -d \" | awk '{split($0, array, ".")} END{print array[2]}'`
if [ "$JAVA_VERSION" -gt 7 ]; then
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
if [ "$MAVEN_VERSION" -gt 7 ]; then
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
if [ -d "$CONTEXT_PATH" ]; then
	echo "$CONTEXT_PATH directory already exits"
	# Application Context (edit and add to META-INF)
	echo Editing context.xml;
	sed -i -r \
		-e 's|ROOT|'"$CONTEXT_PATH"'|g' \
		-e 's|(username=)[^=]*$|\1'\"$DB_USER\"'|1' \
		-e 's|(password=)([^= >][^ />]*)|\1'\"$DB_PASS\"'|1' \
		$PWD/$CONTEXT_PATH/META-INF/context.xml;
else
	# Unpack ROOT.war
	unzip ROOT.war -d $CONTEXT_PATH;
	# Application Context (edit and add to META-INF)
	echo Editing context.xml;
	sed -r \
		-e 's|ROOT|'"$CONTEXT_PATH"'|g' \
		-e 's|(username=)[^=]*$|\1'\"$DB_USER\"'|1' \
		-e 's|(password=)([^=][^ />]*)|\1'\"$DB_PASS\"'|1' \
		<context.xml >$PWD/$CONTEXT_PATH/META-INF/context.xml;
fi;
# Application Properties (edit in WEB-INF/classes)
echo Editing miso.properties;
sed -i -r 's|(baseDirectory:)[^:]*$|\1'$STORAGE_PATH'|1' $PWD/$CONTEXT_PATH/WEB-INF/classes/miso.properties;
# Package Application
if [-e ${CONTEXT_PATH}.war]; then
	jar ufv "${CONTEXT_PATH}.war" -C $PWD/$CONTEXT_PATH/ .;
else
	jar cfv "${CONTEXT_PATH}.war" -C $PWD/$CONTEXT_PATH/ .;
fi;
curl --user $TOMCAT_USER:$TOMCAT_PASS --upload-file ${CONTEXT_PATH}.war "http://$TOMCAT_SERVER/manager/text/deploy?path=/$CONTEXT_PATH&update=true"
