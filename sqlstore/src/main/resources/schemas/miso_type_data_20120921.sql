# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.26)
# Database: lims
# Generation Time: 2015-07-29 19:46:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table _Group
# ------------------------------------------------------------

LOCK TABLES `_Group` WRITE;
/*!40000 ALTER TABLE `_Group` DISABLE KEYS */;

INSERT INTO `_Group` (`groupId`, `description`, `name`)
VALUES
	(2,'Watches for all events on all projects and related overviews','ProjectWatchers'),
	(1,'Watches for all events on all runs','RunWatchers'),
	(3,'Watches for all events on all pools','PoolWatchers');

/*!40000 ALTER TABLE `_Group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table KitDescriptor
# ------------------------------------------------------------

LOCK TABLES `KitDescriptor` WRITE;
/*!40000 ALTER TABLE `KitDescriptor` DISABLE KEYS */;

INSERT INTO `KitDescriptor` (`kitDescriptorId`, `name`, `version`, `manufacturer`, `partNumber`, `stockLevel`, `kitType`, `platformType`)
VALUES
	(1,'GS Titanium Sequencing Kit XLR70',NULL,'Roche','05233526001',0,'Sequencing','LS454'),
	(2,'GS Titanium Sequencing Rgt XLR70',NULL,'Roche','05233534001',0,'Sequencing','LS454'),
	(3,'GS Titanium Sequencing Packing Beads 70',NULL,'Roche','05236541001',0,'Sequencing','LS454'),
	(4,'GS Titanium Sequencing Buffer CB',NULL,'Roche','05351588001',0,'Sequencing','LS454'),
	(5,'GS Titanium Sequencing Bead/Wash Buffers',NULL,'Roche','05351596001',0,'Sequencing','LS454'),
	(6,'GS Titanium Sequencing Supplement CB',NULL,'Roche','05365473001',0,'Sequencing','LS454'),
	(7,'GS FLX Sipper Tubes',NULL,'Roche','04955684001',0,'Sequencing','LS454'),
	(8,'GS Sequencing Pre-Wash Tubes',NULL,'Roche','04955650001',0,'Sequencing','LS454'),
	(9,'GS Titanium LV emPCR Kit (Lib-L)',1,'Roche','05233542001',0,'EmPCR','LS454'),
	(10,'GS Titanium emPCR Bead Recovery Rgt',1,'Roche','05233569001',0,'EmPCR','LS454'),
	(11,'GS Titanium emPCR Reagents LV (Lib-L)',1,'Roche','05233585001',0,'EmPCR','LS454'),
	(12,'GS Titanium emPCR Emulsion Oil LV',1,'Roche','05233607001',0,'EmPCR','LS454'),
	(13,'GS Titanium SV emPCR Kit (Lib-L)',1,'Roche','05233615001',0,'EmPCR','LS454'),
	(14,'GS Titanium emPCR Bead Recovery Rgt',1,'Roche','05233569001',0,'EmPCR','LS454'),
	(15,'GS Titanium emPCR Reagents SV (Lib-L)',1,'Roche','05233631001',0,'EmPCR','LS454'),
	(16,'GS Titanium emPCR Emulsion Oil SV',1,'Roche','05233640001',0,'EmPCR','LS454'),
	(17,'GS Titanium LV emPCR Kit (Lib-L)',2,'Roche','05618428001',0,'EmPCR','LS454'),
	(18,'GS Titanium emPCR Bead Recovery Rgt',2,'Roche','05233569001',0,'EmPCR','LS454'),
	(19,'GS Titanium emPCR Reagents (Lib-L)',2,'Roche','05233585001',0,'EmPCR','LS454'),
	(20,'GS Titanium emPCR Emulsion Oil LV',2,'Roche','05233607001',0,'EmPCR','LS454'),
	(21,'GS Titanium MV emPCR Kit (Lib-L)',2,'Roche','05618436001',0,'EmPCR','LS454'),
	(22,'GS Titanium emPCR Bead Recovery Rgt',2,'Roche','05233569001',0,'EmPCR','LS454'),
	(23,'GS Titanium emPCR Reagents (Lib-L)',2,'Roche','05233585001',0,'EmPCR','LS454'),
	(24,'GS Titanium emPCR Emulsion Oil MV',2,'Roche','05233607001',0,'EmPCR','LS454'),
	(25,'GS Titanium SV emPCR Kit (Lib-L)',2,'Roche','05618444001',0,'EmPCR','LS454'),
	(26,'GS Titanium emPCR Bead Recovery Rgt',2,'Roche','05233569001',0,'EmPCR','LS454'),
	(27,'GS Titanium emPCR Reagents (Lib-L)',2,'Roche','05233585001',0,'EmPCR','LS454'),
	(28,'GS Titanium emPCR Emulsion Oil SV',2,'Roche','05233607001',0,'EmPCR','LS454'),
	(29,'GS Titanium General Library Prep Kit',NULL,'Roche','05233747001',0,'Library','LS454'),
	(30,'GS Titanium Library Rgt/Adaptors Gen',NULL,'Roche','05233771001',0,'Library','LS454'),
	(31,'GS DNA Library Prep Kit Immobilization Beads',NULL,'Roche','04746732001',0,'Library','LS454'),
	(32,'GS DNA Library Prep Kit Buffers',NULL,'Roche','04746708001',0,'Library','LS454'),
	(33,'GS DNA Library Prep Kit Nebulizers',NULL,'Roche','04746724001',0,'Library','LS454'),
	(34,'GS Rapid Library Prep Kit',NULL,'Roche','05608228001',0,'Library','LS454'),
	(35,'GS Titanium Rapid Library Rgt/Adaptors Gen',NULL,'Roche','05619203001',0,'Library','LS454'),
	(36,'GS Rapid DNA Library Prep Kit Buffers',NULL,'Roche','05619181001',0,'Library','LS454'),
	(37,'GS Rapid DNA Library Prep Kit Nebulizers',NULL,'Roche','05233780001',0,'Library','LS454'),
	(38,'GS Titanium emPCR Breaking Kits LV 12pc',NULL,'Roche','05233658001',0,'EmPCR','LS454'),
	(39,'GS Titanium emPCR Filters SV 64pc',NULL,'Roche','05233674001',0,'EmPCR','LS454'),
	(40,'SOLiD Fragment Library Oligos',NULL,'ABI','4401151',0,'Library','Solid'),
	(41,'SOLiD Fragment Library Construction Kit w/ SizeSelect Gels',NULL,'ABI','4443471ABI',0,'Library','Solid'),
	(42,'SOLiD Fragment Library Construction Kit ',NULL,'ABI','4443473ABI',0,'Library','Solid'),
	(43,'SOLiD Fragment Library Construction Reagents',NULL,'ABI','4443713ABI',0,'Library','Solid'),
	(44,'SOLiD Fragment Library Barcoding Kit 1-96 (This includes all 6 DNA barcoding modules)',NULL,'ABI','4449637S',0,'Library','Solid'),
	(45,'SOLiD Fragment Library Barcoding Kit Module 1-16',NULL,'ABI','4444836ABI',0,'Library','Solid'),
	(46,'SOLiD Fragment Library Barcoding Kit Module 17-32 ',NULL,'ABI','4449636S',0,'Library','Solid'),
	(47,'SOLiD Fragment Library Barcoding Kit Module 33-48 ',NULL,'ABI','4449635S',0,'Library','Solid'),
	(48,'SOLiD Fragment Library Barcoding Kit Module 49-64 ',NULL,'ABI','4449641S',0,'Library','Solid'),
	(49,'SOLiD Fragment Library Barcoding Kit Module 65-80 ',NULL,'ABI','4449642S',0,'Library','Solid'),
	(50,'SOLiD Fragment Library Barcoding Kit Module 81-96',NULL,'ABI','4449643S',0,'Library','Solid'),
	(51,'SOLiD RNA Barcoding Kit Module 1-16 (prev. known as SOLiD Transcriptome Multiplexing kit)',NULL,'ABI','4427046ABI',0,'Library','Solid'),
	(52,'SOLiD RNA Barcoding Kit Module 17-32',NULL,'ABI','4453189',0,'Library','Solid'),
	(53,'SOLiD RNA Barcoding Kit Module 33-48',NULL,'ABI','4453191',0,'Library','Solid'),
	(54,'SOLiD Total RNA-Seq Kit',NULL,'ABI','4445374',0,'Library','Solid'),
	(55,'RiboMinus Eukaryotic Kit for RNA-Seq',NULL,'INVITROGEN','A1083708',0,'Library','Solid'),
	(56,'RiboMinus Eukaryotic Kit for RNA-Seq',NULL,'INVITROGEN','A1083702',0,'Library','Solid'),
	(57,'RiboMinus Plant Kit for RNA-Seq',NULL,'INVITROGEN','A1083808',0,'Library','Solid'),
	(58,'RiboMinus Plant Kit for RNA-Seq',NULL,'INVITROGEN','A1083802',0,'Library','Solid'),
	(59,'SOLiD SAGE',NULL,'ABI','4443475ABI',0,'Library','Solid'),
	(60,'SOLiD SAGE for barcoding',NULL,'ABI','4452811',0,'Library','Solid'),
	(61,'SOLiD ChIP-Seq Kit',NULL,'ABI','4449640',0,'Library','Solid'),
	(62,'SOLID ePCR Kit V2',2,'ABI','4400834',0,'EmPCR','Solid'),
	(63,'SOLiD Bead Enrichment Kit',NULL,'ABI','4387894',0,'EmPCR','Solid'),
	(64,'SOLiD Bead Deposition Kit',NULL,'ABI','4387895',0,'EmPCR','Solid'),
	(65,'SOLiD ePCR Tubes and Caps',NULL,'ABI','4400401',0,'EmPCR','Solid'),
	(66,'SOLiD Buffer Kit',NULL,'ABI','4387918',0,'EmPCR','Solid'),
	(67,'SOLiD Emulsion Collection Tray Kit',NULL,'ABI','4415129',0,'EmPCR','Solid'),
	(68,'SOLiD XD Slide & Deposition Kit',1,'ABI','4448393',0,'Sequencing','Solid'),
	(69,'SOLiD XD Slide & Deposition Kit v2',2,'ABI','4456997',0,'Sequencing','Solid'),
	(70,'SOLiD ToP Sequencing Kit - Frag. Lib., F3 Tag, MM50',NULL,'ABI','4449388',0,'Sequencing','Solid'),
	(71,'SOLiD ToP Sequencing Kit - Frag. Lib., F3 Tag, MM35',NULL,'ABI','4449352',0,'Sequencing','Solid'),
	(72,'SOLiD ToP Paired End Sequencing Kit - Frag. Lib., MM50/25',NULL,'ABI','4452693',0,'Sequencing','Solid'),
	(73,'SOLiD ToP Paired End Sequencing Kit - Frag. Lib., MM35/25',NULL,'ABI','4452690',0,'Sequencing','Solid'),
	(74,'SOLiD Mixing Strip Tubes',NULL,'ABI','4406595',0,'Sequencing','Solid'),
	(75,'SOLiD Opti Fragment Library Sequencing Kit-5 bp Barcoding Set',NULL,'ABI','4442261',0,'Sequencing','Solid'),
	(76,'SOLiD ToP Fragment BC Sequencing Kit - BC Frag. Lib., MM50/5',NULL,'ABI','4452697',0,'Sequencing','Solid'),
	(77,'SOLiD ToP Fragment BC Sequencing Kit - BC Frag. Lib., MM35/5',NULL,'ABI','4452696',0,'Sequencing','Solid'),
	(78,'SOLiD ToP Fragment BC Sequencing Kit - BC Frag. Lib., MM50/10',NULL,'ABI','4452699',0,'Sequencing','Solid'),
	(79,'SOLiD ToP Fragment BC Sequencing Kit - BC Frag. Lib., MM35/10',NULL,'ABI','4452698',0,'Sequencing','Solid'),
	(80,'SOLiD ToP Paired End Sequencing Kit - BC Frag. Lib., MM50/25/5',NULL,'ABI','4452694',0,'Sequencing','Solid'),
	(81,'SOLiD ToP Paired End Sequencing Kit - BC Frag. Lib., MM35/25/5',NULL,'ABI','4452691',0,'Sequencing','Solid'),
	(82,'SOLiD ToP Paired End Sequencing Kit - BC Frag. Lib., MM50/25/10',NULL,'ABI','4452695',0,'Sequencing','Solid'),
	(83,'SOLiD ToP Paired End Sequencing Kit - BC Frag. Lib., MM35/25/10',NULL,'ABI','4452692',0,'Sequencing','Solid'),
	(84,'SOLiD ToP Instrument Buffer Kit',NULL,'ABI','4452688',0,'Sequencing','Solid'),
	(85,'SOLiD ToP Paired End Sequencing Kit - DNA, MM50/35',NULL,'ABI','4459179C',0,'Sequencing','Solid'),
	(86,'SOLiD ToP Paired End Sequencing Kit - RNA, MM50/35',NULL,'ABI','4459180C',0,'Sequencing','Solid'),
	(87,'SOLiD ToP Paired End Sequencing Kit - Frag. Lib., F5-P2 MM35',NULL,'ABI','4459155C',0,'Sequencing','Solid'),
	(88,'SOLiD ToP Paired End Sequencing Kit - BC Frag. Lib., MM50/35/5',NULL,'ABI','4459181C',0,'Sequencing','Solid'),
	(89,'SOLiD ToP Paired End Sequencing Kit, F5 Tag, MM35',NULL,'ABI','4459157C',0,'Sequencing','Solid'),
	(90,'SOLiD ToP Paired End Sequencing Kit - BC Frag. Lib., MM50/35/10',NULL,'ABI','4459182C',0,'Sequencing','Solid'),
	(91,'SOLiD Pre Deposition Kit',NULL,'ABI','4445808',0,'Sequencing','Solid'),
	(92,'SOLiD XD Bead Enrichment Kit',NULL,'ABI','4453663',0,'EmPCR','Solid'),
	(93,'SOLiD Workflow Analysis Reagents',NULL,'ABI','4406463',0,'Sequencing','Solid'),
	(94,'SOLiD Mate-Paired Library Oligos',NULL,'ABI','4400468',0,'Library','Solid'),
	(95,'SOLiD 2X25 Mate-Paired Library Construction Kit',NULL,'ABI','4443472ABI',0,'Library','Solid'),
	(96,'SOLiD Long Mate-Paired Library Construction Kit',NULL,'ABI','4443474ABI',0,'Library','Solid'),
	(97,'SOLiD ToP Mate-Paired Sequencing Kit - M-P. Lib., MM50/50',NULL,'ABI','4452685',0,'Sequencing','Solid'),
	(98,'SOLiD ToP Mate-Paired Sequencing Kit - M-P. Lib., MM35/35',NULL,'ABI','4452684',0,'Sequencing','Solid'),
	(99,'SOLID ePCR Kit V2, 20 Mini-Reactions',NULL,'ABI','4407756',0,'EmPCR','Solid'),
	(100,'SOLiD Bead Enrichment Kit, 20 Mini-Reactions',NULL,'ABI','4407757',0,'EmPCR','Solid'),
	(101,'SOLiD Bead Deposition Kit, 20 Mini-Reactions',NULL,'ABI','4407758',0,'EmPCR','Solid'),
	(102,'SOLiD ePCR Tubes and Caps',NULL,'ABI','4400401',0,'EmPCR','Solid'),
	(103,'SOLiD Buffer Kit, 20 Mini-Reactions',NULL,'ABI','4407759',0,'EmPCR','Solid'),
	(104,'EZ Bead E10 System Consumables, 4pack',NULL,'ABI','4453093',0,'EmPCR','Solid'),
	(105,'EZ Bead E20 System Consumables, 4pack',NULL,'ABI','4453094',0,'EmPCR','Solid'),
	(106,'EZ Bead E80 System Consumables, 4pack',NULL,'ABI','4453095',0,'EmPCR','Solid'),
	(107,'EZ Bead Emulsifier E10 Reagents Kit ',NULL,'ABI','4452720',0,'EmPCR','Solid'),
	(108,'EZ Bead Emulsifier E20 Reagents Kit ',NULL,'ABI','4452721',0,'EmPCR','Solid'),
	(109,'EZ Bead Emulsifier E80 Reagents Kit',NULL,'ABI','4452722',0,'EmPCR','Solid'),
	(110,'EZ Bead Emulsifier E10 Accessories Kit ',NULL,'ABI','4453065',0,'EmPCR','Solid'),
	(111,'EZ Bead Emulsifier E20 Accessories Kit ',NULL,'ABI','4453076',0,'EmPCR','Solid'),
	(112,'EZ Bead Emulsifier E80 Accessories Kit',NULL,'ABI','4453070',0,'EmPCR','Solid'),
	(113,'EZ Bead Amplifier E10 Accessories Kit ',NULL,'ABI','4453071',0,'EmPCR','Solid'),
	(114,'EZ Bead Amplifier E20 Accessories Kit ',NULL,'ABI','4453077',0,'EmPCR','Solid'),
	(115,'EZ Bead Amplifier E80 Accessories Kit ',NULL,'ABI','4453072',0,'EmPCR','Solid'),
	(116,'EZ Bead Enricher Buffer Reagent Kit',NULL,'ABI','4444140',0,'EmPCR','Solid'),
	(117,'EZ Bead Enricher E10 Reagent Kit ',NULL,'ABI','4452723',0,'EmPCR','Solid'),
	(118,'EZ Bead Enricher E20 Reagent Kit ',NULL,'ABI','4452724',0,'EmPCR','Solid'),
	(119,'EZ Bead Enricher E80 ReagentKit',NULL,'ABI','4452725',0,'EmPCR','Solid'),
	(120,'EZ Bead Enricher Accessories Kit ',NULL,'ABI','4453073',0,'EmPCR','Solid'),
	(121,'Test',1,'Test','123123123',0,'Sequencing','Illumina');

/*!40000 ALTER TABLE `KitDescriptor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LibrarySelectionType
# ------------------------------------------------------------

LOCK TABLES `LibrarySelectionType` WRITE;
/*!40000 ALTER TABLE `LibrarySelectionType` DISABLE KEYS */;

INSERT INTO `LibrarySelectionType` (`librarySelectionTypeId`, `name`, `description`)
VALUES
	(1,'RT-PCR','Source material was selected by reverse transcription PCR'),
	(2,'RANDOM PCR','Source material was selected by randomly generated primers'),
	(3,'PCR','Source material was selected by designed primers'),
	(4,'unspecified','Unspecified selection or enrichment strategy'),
	(5,'other','Other library enrichment, screening, or selection process'),
	(6,'Reduced Representation','Reproducible genomic subsets, often generated by restriction fragment size selection, containing a manageable number of loci to facilitate re-sampling'),
	(7,'Hybrid Selection','Selection by hybridization in array or solution'),
	(8,'DNAse','Deoxyribonuclease (DNAse) digestion'),
	(9,'MNase','Micrococcal Nuclease (MNase) digestion'),
	(10,'ChIP','Chromatin Immunoprecipitation'),
	(11,'cDNA','Complementary DNA'),
	(12,'MSLL','Methylation Spanning Linking Library'),
	(13,'CF-T','Cot-filtered theoretical single-copy genomic DNA'),
	(14,'CF-H','Cot-filtered highly repetitive genomic DNA'),
	(15,'CF-M','Cot-filtered moderately repetitive genomic DNA'),
	(16,'CF-S','Cot-filtered single/low-copy genomic DNA'),
	(17,'MF','Methyl Filtrated'),
	(18,'HMPR','Hypo-methylated partial restriction digest'),
	(19,'RANDOM','Random shearing only'),
	(20,'size fractionation','Physical selection of size appropriate targets'),
	(21,'RACE','Rapid Amplification of cDNA Ends'),
	(22,'CAGE','Cap-analysis gene expression'),
	(23,'MBD2 protein methyl-CpG binding domain','Enrichment by methyl-CpG binding domain'),
	(24,'5-methylcytidine antibody','Selection of methylated DNA fragments using an antibody raised against 5-methylcytosine or 5-methylcytidine (m5C)'),
	(25,'Restriction Digest','DNA fractionation using restriction enzymes');

/*!40000 ALTER TABLE `LibrarySelectionType` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LibraryStrategyType
# ------------------------------------------------------------

LOCK TABLES `LibraryStrategyType` WRITE;
/*!40000 ALTER TABLE `LibraryStrategyType` DISABLE KEYS */;

INSERT INTO `LibraryStrategyType` (`libraryStrategyTypeId`, `name`, `description`)
VALUES
	(6,'CLONEEND','Clone end (5\', 3\', or both) sequencing'),
	(5,'AMPLICON','Sequencing of overlapping or distinct PCR or RT-PCR products'),
	(4,'POOLCLONE','Shotgun of pooled clones (usually BACs and Fosmids)'),
	(2,'WCS','Whole chromosome (or other replicon) shotgun'),
	(3,'CLONE','Genomic clone based (hierarchical) sequencing'),
	(1,'WGS','Whole genome shotgun'),
	(15,'OTHER','Library strategy not listed'),
	(14,'CTS','Concatenated Tag Sequencing'),
	(13,'FL-cDNA','Full-length sequencing of cDNA templates'),
	(12,'EST','Single pass sequencing of cDNA templates'),
	(11,'Bisulfite-Seq','Sequencing following treatment of DNA with Bisulfite-Seq bisulfite to convert cytosine residues to uracil depending on methylation status'),
	(10,'DNase-Hypersensitivity','Sequencing of hypersensitive sites, or segments of open chromatin that are more readily cleaved by DNaseI'),
	(9,'MNase-Seq','Direct sequencing following MNase digestion'),
	(8,'ChIP-Seq','Direct sequencing of chromatin immunoprecipitates'),
	(7,'FINISHING','Sequencing intended to finish (close) gaps in existing coverage'),
	(16,'MBD-Seq','Direct sequencing of methylated fractions sequencing strategy'),
	(17,'MeDIP-Seq','Methylated DNA Immunoprecipitation Sequencing strategy'),
	(18,'MRE-Seq','Methylation-Sensitive Restriction Enzyme Sequencing strategy'),
	(19,'RNA-Seq','Random sequencing of whole transcriptome'),
	(20,'WXS','Random sequencing of exonic regions selected from the genome');

/*!40000 ALTER TABLE `LibraryStrategyType` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LibraryType
# ------------------------------------------------------------

LOCK TABLES `LibraryType` WRITE;
/*!40000 ALTER TABLE `LibraryType` DISABLE KEYS */;

INSERT INTO `LibraryType` (`libraryTypeId`, `description`, `platformType`)
VALUES
	(16,'Small RNA','Solid'),
	(15,'Whole Transcriptome','Solid'),
	(14,'SAGE','Solid'),
	(13,'Long Mate Pair','Solid'),
	(12,'Fragment','Solid'),
	(11,'Amplicon','LS454'),
	(10,'Transcriptome','LS454'),
	(9,'20kbp Paired End','LS454'),
	(8,'8kbp Paired End','LS454'),
	(7,'3kbp Paired End','LS454'),
	(3,'mRNA Seq','Illumina'),
	(2,'Mate Pair','Illumina'),
	(1,'Paired End','Illumina'),
	(6,'Standard Shotgun','LS454'),
	(5,'Rapid Shotgun','LS454'),
	(4,'Small RNA','Illumina'),
	(17,'Single End','Illumina');

/*!40000 ALTER TABLE `LibraryType` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Platform
# ------------------------------------------------------------

LOCK TABLES `Platform` WRITE;
/*!40000 ALTER TABLE `Platform` DISABLE KEYS */;

INSERT INTO `Platform` (`platformId`, `name`, `instrumentModel`, `description`, `numContainers`)
VALUES
	(1,'Solid','unspecified','4-channel flowgram',1),
	(3,'Solid','AB SOLiD System 3.0','4-channel flowgram',1),
	(4,'Solid','AB SOLiD System 2.0','4-channel flowgram',1),
	(5,'Solid','AB SOLiD System','4-channel flowgram',1),
	(6,'Illumina','unspecified','4-channel flowgram',1),
	(7,'Illumina','Illumina Genome Analyzer II','4-channel flowgram',1),
	(8,'Illumina','Illumina Genome Analyzer','4-channel flowgram',1),
	(9,'Illumina','Solexa 1G Genome Analyzer','4-channel flowgram',1),
	(10,'LS454','unspecified','1-color sequential flows',2),
	(11,'LS454','454 GS FLX','1-color sequential flows',2),
	(12,'LS454','454 GS 20','1-color sequential flows',2),
	(13,'LS454','454 GS','1-color sequential flows',2),
	(14,'LS454','454 GS FLX Titanium','1-color sequential flows',2),
	(2,'Solid','AB SOLiD 4 System','4-channel flowgram',1),
	(15,'Solid','5500 XL','4-channel flowgram',1),
	(16,'Illumina','Illumina HiSeq 2000','4-channel flowgram',1),
	(17,'Solid','AB SOLiD PI System','4-channel flowgram',1),
	(18,'Solid','AB SOLiD 4hq System','4-channel flowgram',1),
	(19,'Illumina','Illumina Genome Analyzer IIx','4-channel flowgram',1),
	(20,'PacBio','PacBio RS','',1),
	(21,'IonTorrent','Ion Torrent PGM','',1),
	(22,'Solid','AB SOLiD 5500xl','',1),
	(23,'Solid','AB SOLiD 5500','',1),
	(24,'Illumina','Illumina MiSeq','',1),
	(25,'Illumina','Illumina HiSeq 1000','',1);

/*!40000 ALTER TABLE `Platform` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table QCType
# ------------------------------------------------------------

LOCK TABLES `QCType` WRITE;
/*!40000 ALTER TABLE `QCType` DISABLE KEYS */;

INSERT INTO `QCType` (`qcTypeId`, `name`, `description`, `qcTarget`, `units`)
VALUES
	(2,'Bioanalyzer','Chip-based capillary electrophoresis machine to analyse RNA, DNA, and protein, manufactured by Agilent','Library','nM'),
	(1,'QuBit','Quantitation of DNA, RNA and protein, manufacturered by Invitrogen','Sample','ng/&#181;l'),
	(3,'Bioanalyser','Chip-based capillary electrophoresis machine to analyse RNA, DNA, and protein, manufactured by Agilent','Sample','ng/&#181;l'),
	(4,'QuBit','Quantitation of DNA, RNA and protein, manufacturered by Invitrogen','Library','ng/&#181;l'),
	(6,'SeqInfo QC','Post-run completion run QC step, undertaken by the SeqInfo team, as part of the primary analysis stage.','Run',''),
	(5,'SeqOps QC','Post-run completion run QC step, undertaken by the SeqOps team, to move a run through to the primary analysis stage.','Run',''),
	(7,'qPCR','Quantitative PCR','Library','mol/&#181;l');

/*!40000 ALTER TABLE `QCType` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SampleType
# ------------------------------------------------------------

LOCK TABLES `SampleType` WRITE;
/*!40000 ALTER TABLE `SampleType` DISABLE KEYS */;

INSERT INTO `SampleType` (`typeId`, `name`)
VALUES
	(2,'NON GENOMIC'),
	(1,'GENOMIC'),
	(5,'OTHER'),
	(4,'VIRAL RNA'),
	(3,'SYNTHETIC'),
	(6,'TRANSCRIPTOMIC'),
	(7,'METAGENOMIC'),
	(8,'METATRANSCRIPTOMIC');

/*!40000 ALTER TABLE `SampleType` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table StudyType
# ------------------------------------------------------------

LOCK TABLES `StudyType` WRITE;
/*!40000 ALTER TABLE `StudyType` DISABLE KEYS */;

INSERT INTO `StudyType` (`typeId`, `name`)
VALUES
	(1,'Other'),
	(12,'RNASeq'),
	(11,'Population Genomics'),
	(10,'Cancer Genomics'),
	(9,'Gene Regulation Study'),
	(8,'Forensic or Paleo-genomics'),
	(7,'Synthetic Genomics'),
	(6,'Epigenetics'),
	(5,'Resequencing'),
	(4,'Transcriptome Analysis'),
	(3,'Metagenomics'),
	(2,'Whole Genome Sequencing');

/*!40000 ALTER TABLE `StudyType` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TagBarcodes
# ------------------------------------------------------------

LOCK TABLES `TagBarcodes` WRITE;
/*!40000 ALTER TABLE `TagBarcodes` DISABLE KEYS */;

INSERT INTO `TagBarcodes` (`tagId`, `name`, `sequence`, `platformName`, `strategyName`)
VALUES
	(12,'Index 12','CTTGTA','Illumina','TruSeq Single Index'),
	(11,'Index 11','GGCTAC','Illumina','TruSeq Single Index'),
	(10,'Index 10','TAGCTT','Illumina','TruSeq Single Index'),
	(9,'Index 9','GATCAG','Illumina','TruSeq Single Index'),
	(8,'Index 8','ACTTGA','Illumina','TruSeq Single Index'),
	(7,'Index 7','CAGATC','Illumina','TruSeq Single Index'),
	(6,'Index 6','GCCAAT','Illumina','TruSeq Single Index'),
	(5,'Index 5','ACAGTG','Illumina','TruSeq Single Index'),
	(4,'Index 4','TGACCA','Illumina','TruSeq Single Index'),
	(3,'Index 3','TTAGGC','Illumina','TruSeq Single Index'),
	(2,'Index 2','CGATGT','Illumina','TruSeq Single Index'),
	(1,'Index 1','ATCACG','Illumina','TruSeq Single Index'),
	(24,'Index 24','GGTAGC','Illumina','TruSeq Single Index'),
	(23,'Index 23','GAGTGG','Illumina','TruSeq Single Index'),
	(22,'Index 22','CGTACG','Illumina','TruSeq Single Index'),
	(21,'Index 21','GTTTCG','Illumina','TruSeq Single Index'),
	(20,'Index 20','GTGGCC','Illumina','TruSeq Single Index'),
	(19,'Index 19','GTGAAA','Illumina','TruSeq Single Index'),
	(18,'Index 18','GTCCGC','Illumina','TruSeq Single Index'),
	(17,'Index 17','GTAGAG','Illumina','TruSeq Single Index'),
	(16,'Index 16','CCGTCC','Illumina','TruSeq Single Index'),
	(15,'Index 15','ATGTCA','Illumina','TruSeq Single Index'),
	(14,'Index 14','AGTTCC','Illumina','TruSeq Single Index'),
	(13,'Index 13','AGTCAA','Illumina','TruSeq Single Index'),
	(48,'Index 48','TCGGCA','Illumina','TruSeq Single Index'),
	(47,'Index 47','TCGAAG','Illumina','TruSeq Single Index'),
	(46,'Index 46','TCCCGA','Illumina','TruSeq Single Index'),
	(45,'Index 45','TCATTC','Illumina','TruSeq Single Index'),
	(44,'Index 44','TATAAT','Illumina','TruSeq Single Index'),
	(43,'Index 43','TACAGC','Illumina','TruSeq Single Index'),
	(42,'Index 42','TAATCG','Illumina','TruSeq Single Index'),
	(41,'Index 41','GACGAC','Illumina','TruSeq Single Index'),
	(40,'Index 40','CTCAGA','Illumina','TruSeq Single Index'),
	(39,'Index 39','CTATAC','Illumina','TruSeq Single Index'),
	(38,'Index 38','CTAGCT','Illumina','TruSeq Single Index'),
	(37,'Index 37','CGGAAT','Illumina','TruSeq Single Index'),
	(36,'Index 36','CCAACA','Illumina','TruSeq Single Index'),
	(35,'Index 35','CATTTT','Illumina','TruSeq Single Index'),
	(34,'Index 34','CATGGC','Illumina','TruSeq Single Index'),
	(33,'Index 33','CAGGCG','Illumina','TruSeq Single Index'),
	(32,'Index 32','CACTCA','Illumina','TruSeq Single Index'),
	(31,'Index 31','CACGAT','Illumina','TruSeq Single Index'),
	(30,'Index 30','CACCGG','Illumina','TruSeq Single Index'),
	(29,'Index 29','CAACTA','Illumina','TruSeq Single Index'),
	(28,'Index 28','CAAAAG','Illumina','TruSeq Single Index'),
	(27,'Index 27','ATTCCT','Illumina','TruSeq Single Index'),
	(26,'Index 26','ATGAGC','Illumina','TruSeq Single Index'),
	(25,'Index 25','ACTGAT','Illumina','TruSeq Single Index'),
	(60,'RL12','ACTCGCGTCGT','LS454','454 Rapid Library'),
	(59,'RL11','ACTATACGAGT','LS454','454 Rapid Library'),
	(58,'RL10','ACTACGTCTCT','LS454','454 Rapid Library'),
	(57,'RL9','ACGTAGATCGT','LS454','454 Rapid Library'),
	(56,'RL8','ACGTACTGTGT','LS454','454 Rapid Library'),
	(55,'RL7','ACGTACACACT','LS454','454 Rapid Library'),
	(54,'RL6','ACGCGTCTAGT','LS454','454 Rapid Library'),
	(53,'RL5','ACGAGTAGACT','LS454','454 Rapid Library'),
	(52,'RL4','ACGACACGTAT','LS454','454 Rapid Library'),
	(51,'RL3','ACACTACTCGT','LS454','454 Rapid Library'),
	(50,'RL2','ACACGTAGTAT','LS454','454 Rapid Library'),
	(49,'RL1','ACACGACGACT','LS454','454 Rapid Library'),
	(80,'N508','CTAAGCCT','Illumina','Nextera Dual Index'),
	(79,'N507','AAGGAGTA','Illumina','Nextera Dual Index'),
	(78,'N506','ACTGCATA','Illumina','Nextera Dual Index'),
	(77,'N505','GTAAGGAG','Illumina','Nextera Dual Index'),
	(76,'N504','AGAGTAGA','Illumina','Nextera Dual Index'),
	(75,'N503','TATCCTCT','Illumina','Nextera Dual Index'),
	(74,'N502','CTCTCTAT','Illumina','Nextera Dual Index'),
	(73,'N501','TAGATCGC','Illumina','Nextera Dual Index'),
	(72,'N712','GTAGAGGA','Illumina','Nextera Dual Index'),
	(71,'N711','AAGAGGCA','Illumina','Nextera Dual Index'),
	(70,'N710','CGAGGCTG','Illumina','Nextera Dual Index'),
	(69,'N709','GCTACGCT','Illumina','Nextera Dual Index'),
	(68,'N708','CAGAGAGG','Illumina','Nextera Dual Index'),
	(67,'N707','CTCTCTAC','Illumina','Nextera Dual Index'),
	(66,'N706','TAGGCATG','Illumina','Nextera Dual Index'),
	(65,'N705','GGACTCCT','Illumina','Nextera Dual Index'),
	(64,'N704','TCCTGAGC','Illumina','Nextera Dual Index'),
	(63,'N703','AGGCAGAA','Illumina','Nextera Dual Index'),
	(62,'N702','CGTACTAG','Illumina','Nextera Dual Index'),
	(61,'N701','TAAGGCGA','Illumina','Nextera Dual Index');

/*!40000 ALTER TABLE `TagBarcodes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table User
# ------------------------------------------------------------

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;

INSERT INTO `User` (`userId`, `active`, `admin`, `external`, `fullName`, `internal`, `loginName`, `roles`, `password`, `email`)
VALUES
	(1,00000001,00000001,00000000,'admin',00000001,'admin','ROLE_ADMIN,ROLE_INTERNAL','d033e22ae348aeb5660fc2140aec35850c4da997','admin@admin');

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
