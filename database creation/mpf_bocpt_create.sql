CREATE TABLE "bocptName" (
    "code"    VARCHAR(10),
    "tickerB"    VARCHAR(20),
    "fullName"    VARCHAR(100) NOT NULL UNIQUE,
    "oldCode"    VARCHAR(100) NOT NULL UNIQUE,
    "description"    VARCHAR(255),
    "assetMgmr"    VARCHAR(255),
    PRIMARY KEY("code")
);

CREATE TABLE "bocptMpfNav" (
    "id"    INTEGER,
    "navDate"    VARCHAR(10) NOT NULL,
    "code"    VARCHAR(10),
    "nav"    DECIMAL(12,4),
    FOREIGN KEY("code") REFERENCES "bocptName"("code") ON UPDATE CASCADE,
    PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO bocptName ('code', 'tickerB', 'fullName', 'oldCode', 'assetMgmr') VALUES (
    'CNEPCHN','BOCPECE:HK','BOC-Prudential China Equity Fund','CE','BOCPT'
), (
    'CNEPHKZ','BOCPEHE:HK','BOC-Prudential Hong Kong Equity Fund','HKE','BOCPT'
), (
    'CNEPJPZ','BOCPEJE:HK','BOC-Prudential Japan Equity Fund','JE','BOCPT'
), (
    'CNEPAPX','BOCPEAE:HK','BOC-Prudential Asia Equity Fund','AE','BOCPT'
), (
    'CNEPGBZ','BOCPEGE:HK','BOC-Prudential Global Equity Fund','GE','BOCPT, unknown, MSCI, S&P, WISE CSI'
), (
    'CNETHKW','BOCPCHA:HK','BOC-Prudential CSI HK 100 Tracker Fund','HKT','WISE CSI'
), (
    'CNETEUZ','BOCPEUB:HK','BOC-Prudential European Index Tracking Fund','ET','unknown'
), (
    'CNETNAZ','BOCPNAC:HK','BOC-Prudential North America Index Tracking Fund','NAT','unknown'
), (
    'CNMPGR0','BOCPEGF:HK','BOC-Prudential Growth Fund','G','BOCPT, unknown, MSCI, S&P, WISE CSI'
), (
    'CNMPBA8','BOCPEBF:HK','BOC-Prudential Balanced Fund','B','BOCPT, unknown, MSCI, S&P, WISE CSI'
), (
    'CNMPSB5','BOCPESF:HK','BOC-Prudential Stable Fund','S','BOCPT, unknown, MSCI, S&P, WISE CSI'
), (
    'CNFIGBZ','BOCPEBO:HK','BOC-Prudential Bond Fund','Bond','BOCPT'
), (
    'CNMMPFC','BOCPEPF:HK','BOC-Prudential MPF Conservative Fund','MPFC','BOCPT'
), (
    'CNDICA6','BOCECOA:HK','BOC-Prudential Core Accumulation Fund','CA','BOCPT, Blackrock iShares, etc.'
), (
    'CNDISF2','BOCECAP:HK','BOC-Prudential Age 65 Plus Fund','SFP','BOCPT, Blackrock iShares, etc.'
);