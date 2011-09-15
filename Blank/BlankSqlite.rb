#
#  BlankSqlite.rb
#  Blank
#
#  Created by Matthieu DESILE on 9/11/11.
#  Copyright 2011 __MyCompanyName__. All rights reserved.
#


SCHEMA = [
    "CREATE TABLE ZABSTRACTPOINT (
        Z_PK INTEGER PRIMARY KEY, 
        Z_ENT INTEGER, 
        Z_OPT INTEGER, 
        ZAUTOMATIC INTEGER, 
        ZWAYPOINT INTEGER, 
        ZTIMESTAMP TIMESTAMP, 
        ZALTITUDE DECIMAL, 
        ZLATITUDE DECIMAL, 
        ZLONGITUDE DECIMAL, 
        ZCITY VARCHAR, 
        ZCOUNTRY VARCHAR, 
        ZLABEL VARCHAR, 
        ZLOCATION VARCHAR, 
        ZLONGLABEL VARCHAR, 
        ZNAME VARCHAR, 
        ZPATH VARCHAR, 
        ZNAME1 VARCHAR );",
    "CREATE TABLE ZCAMERA ( 
        Z_PK INTEGER PRIMARY KEY, 
        Z_ENT INTEGER, 
        Z_OPT INTEGER, 
        ZCLOCKERROR INTEGER, 
        ZISSETUP INTEGER, 
        ZTIMEZONE VARCHAR );",
    "CREATE TABLE ZCONFIGURATION ( 
        Z_PK INTEGER PRIMARY KEY, 
        Z_ENT INTEGER, 
        Z_OPT INTEGER, 
        ZGOBBINGLIMIT INTEGER, 
        ZMATCHINGLIMIT INTEGER, 
        ZMERGINGLIMIT INTEGER );",
    "CREATE TABLE ZMETAATTRIBUTE ( 
        Z_PK INTEGER PRIMARY KEY, 
        Z_ENT INTEGER, 
        Z_OPT INTEGER, 
        ZATTRIBUTEKEY VARCHAR, 
        ZATTRIBUTEVALUE BLOB );",
    "CREATE TABLE ZTRACKLOG ( 
        Z_PK INTEGER PRIMARY KEY, 
        Z_ENT INTEGER, 
        Z_OPT INTEGER, 
        ZINDEX INTEGER, 
        ZBEGINDATE TIMESTAMP, 
        ZENDDATE TIMESTAMP, 
        ZBACKUPPATH VARCHAR, 
        ZNAME VARCHAR );",
    "CREATE TABLE ZTRACKSEGMENT ( 
        Z_PK INTEGER PRIMARY KEY, 
        Z_ENT INTEGER, 
        Z_OPT INTEGER, 
        ZINDEX INTEGER, 
        ZTRACK INTEGER, 
        ZBEGINDATE TIMESTAMP, 
        ZENDDATE TIMESTAMP, 
        ZTRACKPOINTARRAY BLOB );",
    "CREATE TABLE Z_METADATA (Z_VERSION INTEGER PRIMARY KEY, Z_UUID VARCHAR(255), Z_PLIST BLOB);",
    "CREATE TABLE Z_PRIMARYKEY (Z_ENT INTEGER PRIMARY KEY, Z_NAME VARCHAR, Z_SUPER INTEGER, Z_MAX INTEGER);",
    "CREATE INDEX ZABSTRACTPOINT_ZWAYPOINT_INDEX ON ZABSTRACTPOINT (ZWAYPOINT);",
    "CREATE INDEX ZABSTRACTPOINT_Z_ENT_INDEX ON ZABSTRACTPOINT (Z_ENT);",
    "CREATE INDEX ZTRACKSEGMENT_ZTRACK_INDEX ON ZTRACKSEGMENT (ZTRACK);"
]

DATA = [
    "INSERT INTO ZCAMERA VALUES(1,4,1,0,1,'Europe/Paris');",
    "INSERT INTO ZCONFIGURATION VALUES(1,5,1,0,30,5);",
    "INSERT INTO ZMETAATTRIBUTE VALUES(1,6,1,'overrideMetadata',X'4E4F');",
    "INSERT INTO ZMETAATTRIBUTE VALUES(2,6,1,'trackLogGeocoding',X'594553');",
    "INSERT INTO ZMETAATTRIBUTE VALUES(3,6,1,'waypointGeocoding',X'594553');",
    "INSERT INTO ZMETAATTRIBUTE VALUES(4,6,1,'tableColumns',X'6E616D652C74696D657374616D702C6C617469747564652C6C6F6E6769747564652C616C7469747564652C636F756E7472792C63697479');",
    "INSERT INTO Z_PRIMARYKEY VALUES(1,'AbstractPoint',0,0);",
    "INSERT INTO Z_PRIMARYKEY VALUES(2,'Image',1,0);",
    "INSERT INTO Z_PRIMARYKEY VALUES(3,'WayPoint',1,0);",
    "INSERT INTO Z_PRIMARYKEY VALUES(4,'Camera',0,1);",
    "INSERT INTO Z_PRIMARYKEY VALUES(5,'Configuration',0,1);",
    "INSERT INTO Z_PRIMARYKEY VALUES(6,'MetaAttribute',0,4);",
    "INSERT INTO Z_PRIMARYKEY VALUES(7,'TrackLog',0,0);",
    "INSERT INTO Z_PRIMARYKEY VALUES(8,'TrackSegment',0,0);",
    "INSERT INTO Z_METADATA VALUES(1,'E1F954A5-4981-4478-99FC-AA07D4CA8B85',X'62706C6973743030D60102030405060708091A1B1C5F101E4E5353746F72654D6F64656C56657273696F6E4964656E746966696572735F101D4E5350657273697374656E63654672616D65776F726B56657273696F6E5F10194E5353746F72654D6F64656C56657273696F6E4861736865735B4E5353746F7265547970655F10204E5353746F72654D6F64656C56657273696F6E48617368657356657273696F6E5F10125F4E534175746F56616375756D4C6576656CA010FBD80A0B0C0D0E0F1011121314151617181955496D61676558547261636B4C6F6758576179506F696E745D4D6574614174747269627574655D4162737472616374506F696E745D436F6E66696775726174696F6E5C547261636B5365676D656E745643616D6572614F1020998FA591CC5BEF632420121DC92F05EAB7B44AD2653A1A1C9A561D34B5F4176E4F1020E77348540D404D6A185614537BC90E4A6E739CEDB827BD9F91A1B11F50D174F84F1020AEB29E9FD82CEF74E5DE82EB40F7368663809B9BFBDBAED3A4DDF69A7C8468E54F1020C74FC402010FEC7510E0C3BFD5CA39A87F5BFFEF8CA67089BB3AA0FA5FA141444F1020C04F4AA856934E2C0B1358D926C46058ED4AA876520430881940831A4B0480324F1020E3B3568D141939FAC0DAB34906C057A7431F4897C38961A49460C908D5C3EE8B4F10209A2D4C03EE9773495FF17366F68E102D7148AE5D42B8DB322ED2CD1D1D4A634C4F10206A78D0E5CFC16B4B295086ED6E1DAD8AC3369F2716CD67FED4C2565F252142095653514C6974651003513200080015003600560072007E00A100B600B700B900CA00D000D900E200F000FE010C0119012001430166018901AC01CF01F202150238023F02410000000000000201000000000000001D00000000000000000000000000000243');"
]