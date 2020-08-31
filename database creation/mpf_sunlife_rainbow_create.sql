CREATE TABLE "slrName" (
    "code"    VARCHAR(10),
    "tickerB"    VARCHAR(20),
    "fullName"    VARCHAR(100) NOT NULL UNIQUE,
    "oldCode"    VARCHAR(100) NOT NULL UNIQUE,
    "description"    VARCHAR(255),
    "assetMgmr"    VARCHAR(255),
    PRIMARY KEY("code")
);

CREATE TABLE "slrMpfNav" (
    "id"    INTEGER,
    "navDate"    VARCHAR(10) NOT NULL,
    "code"    VARCHAR(10),
    "nav"    DECIMAL(12,4),
    FOREIGN KEY("code") REFERENCES "slrName"("code") ON UPDATE CASCADE,
    PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO slrName ('code', 'tickerB', 'fullName', 'oldCode', 'assetMgmr') VALUES (
    'SRMMPFC','CMGRCPA:HK','Sun Life MPF Conservative Fund','MPFC','Invesco Hong Kong Limited'
), (
    'SRFIGBZ','SFSMGBA:HK','Sun Life MPF Global Bond Fund','GB','First State: 42%; Invesco: 30%; Templeton: 25%'
), (
    'SRFIHKD','CMGRFIA:HK','Sun Life MPF Hong Kong Dollar Bond Fund','HKB','First State: 56%; Principal: 21%; Invesco: 20%'
), (
    'SRDISF2','SLRBAGP:HK','Sun Life MPF Age 65 Plus Fund','SFP','Schroders'
), (
    'SRDICA6','SLRBCOA:HK','Sun Life MPF Core Accumulation Fund','CA','Schroders'
), (
    'SRMPBA8','CMGRBPA:HK','Sun Life MPF Balanced Fund','B','First State: 57%; Schroders: 23%; Principal: 6%; Invesco: 5%; Templeton: 4%; Allianz: 3%'
), (
    'SRMPGR0','CMGRPGA:HK','Sun Life MPF Growth Fund','G','First State: 50%; Schroders: 28%; Principal: 8%; Invesco: 6%; Allianz: 5%; Templeton: 2%'
), (
    'SREPGBZ','SIMGEFA:HK','Sun Life MPF Multi-Sector Equity Fund','GE','Schroders: 57%; Invesco: 24%; Blackrock-"iShares Health Care ETF": 11%; SSgA-Tracker Fund of HK: 4%'
), (
    'SREPAPX','SRMAEFA:HK','Sun Life MPF Asian Equity Fund','AE','Allianz: 60%; Schroders: 37%'
), (
    'SRETHKF','SFMHKIA:HK','Sun Life FTSE MPF Hong Kong Index Fund','FTSE.HK','Blackrock-iShares'
), (
    'SREPHKZ','CMGRHEA:HK','Sun Life MPF Hong Kong Equity Fund','HKE','"First State: 60%; Schroders: 20%; Principal: 15%; Templeton: 4%'
), (
    'SREPGCZ','SIMHCEA:HK','Sun Life MPF Greater China Equity Fund','CE','Allianz: 48%; Invesco: 47%'
);