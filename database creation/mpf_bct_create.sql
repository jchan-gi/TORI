CREATE TABLE "bctName" (
    "code"    VARCHAR(10),
    "tickerB"    VARCHAR(20),
    "fullName"    VARCHAR(100) NOT NULL UNIQUE,
    "oldCode"    VARCHAR(100) NOT NULL UNIQUE,
    "description"    VARCHAR(255),
    "assetMgmr"    VARCHAR(255),
    PRIMARY KEY("code")
);

CREATE TABLE "bctMpfNav" (
    "id"    INTEGER,
    "navDate"    VARCHAR(10) NOT NULL,
    "code"    VARCHAR(10),
    "nav"    DECIMAL(12,4),
    FOREIGN KEY("code") REFERENCES "bctName"("code") ON UPDATE CASCADE,
    PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO bctName ('code', 'tickerB', 'fullName', 'oldCode', 'assetMgmr') VALUES (
'BCEPCHK', 'BPASEQF:HK', 'BCT (Pro) China and Hong Kong Equity Fund', 'CEHK', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 80%; Schroder(Smart Fund): 20%'
), (
'BCEPAPX', 'BPCHKEF:HK', 'BCT (Pro) Asian Equity Fund', 'AE', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 80%; Schroder(Smart Fund): 20%'
), (
'BCEPEEZ', 'BPEUEQF:HK', 'BCT (Pro) European Equity Fund', 'EU', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 71%; Schroder(Smart Fund): 27%'
), (
'BCEPGBZ', 'BPGLEQF:HK', 'BCT (Pro) Global Equity Fund', 'GE', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 36%; Schroder(Smart Fund): 63%'
), (
'BCETHSI', 'BPHKITF:HK', 'BCT (Pro) Hang Seng Index Tracking Fund', 'HSIT', 'SSgA Tracker Fund of HK (2800:HK)'
), (
'BCETGCZ', 'BPGCEQF:HK', 'BCT (Pro) Greater China Equity Fund', 'CT', 'SSgA (SPDR fund): 80%; SSgA Tracker Fund of HK (2800:HK): 20%'
), (
'BCETGBZ', 'BPWLEQF:HK', 'BCT (Pro) World Equity Fund', 'GT', 'Blackrock (iShares ETF): 18%; SSgA (SPDR funds): 50%; SSgA Tracker Fund of HK (2800:HK): 5%; Vanguard (ETF): 26%'
), (
'BCTYF40', 'BPSE40F:HK', 'BCT (Pro) SaveEasy 2040 Fund', 'SE2040', 'Fidelity HK'
), (
'BCMPGR9', 'BPE9ASF:HK', 'BCT (Pro) E90 Mixed Asset Fund', 'E90', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 56%; Schroder(Smart Fund): 44%'
), (
'BCMPBA7', 'BPE7ASF:HK', 'BCT (Pro) E70 Mixed Asset Fund', 'E70', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 61%; Schroder(Smart Fund): 39%'
), (
'BCMPSG5', 'BPE5ASF:HK', 'BCT (Pro) E50 Mixed Asset Fund', 'E50', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 67%; Schroder(Smart Fund): 33%'
), (
'BCMPSB3', 'BPE3ASF:HK', 'BCT (Pro) E30 Mixed Asset Fund', 'E30', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 73%; Schroder(Smart Fund): 27%'
), (
'BCMPFMZ', 'BPABREF:HK', 'BCT (Pro) Flexi Mixed Asset Fund', 'FM', 'Allianz Asia Pacific'
), (
'BCDICA6', 'BCTCOAC:HK', 'BCT (Pro) Core Accmulation Fund', 'CA', 'Invesco'
), (
'BCDISF2', 'BCTPAGP:HK', 'BCT (Pro) Age 65 Plus Fund', 'SFP', 'Invesco'
), (
'BCFIRMB', 'BPRMBOF:HK', 'BCT (Pro) RMB Bond Fund', 'RMBB', 'Invesco'
), (
'BCFIGBZ', 'BPGLBOF:HK', 'BCT (Pro) Global Bond Fund', 'GB', 'Amundi+BCT+multiple subfunds(Dynamic Fund): 79%; Schroder(Smart Fund): 20%'
), (
'BCFIHKD', 'BPHKDBF:HK', 'BCT (Pro) Hong Kong Dollar Bond Fund', 'HKB', 'JP Morgan (Asia)'
), (
'BCMMPFC', 'BPMPCOF:HK', 'BCT (Pro) MPF Conservative Fund', 'MPFC', 'Invesco'
);