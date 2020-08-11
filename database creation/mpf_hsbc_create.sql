CREATE TABLE "hsbcName" (
    "code"    VARCHAR(10),
    "tickerB"    VARCHAR(20),
    "fullName"    VARCHAR(100) NOT NULL UNIQUE,
    "oldCode"    VARCHAR(100) NOT NULL UNIQUE,
    "description"    VARCHAR(255),
    "assetMgmr"    VARCHAR(255),
    PRIMARY KEY("code")
);

CREATE TABLE "hsbcMpfNav" (
    "id"    INTEGER,
    "navDate"    VARCHAR(10) NOT NULL,
    "code"    VARCHAR(10),
    "nav"    DECIMAL(12,4),
    FOREIGN KEY("code") REFERENCES "hsbcName"("code") ON UPDATE CASCADE,
    PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO hsbcName ('code', 'tickerB', 'fullName', 'oldCode', 'assetMgmr') VALUES (
'HSDISF2', 'HSSTAPL:HK', 'Age 65 Plus Fund', 'SFP', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSEPAPX', 'HBSTPAE:HK', 'Asia Pacific Equity Fund', 'Asia Pacific Equity Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSMPBA8', 'HBSTPBA:HK', 'Balanced Fund', 'Balanced Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSEPCHN', 'HSTCHEQ:HK', 'Chinese Equity Fund', 'China Equity Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSDICA6', 'HSSTCAC:HK', 'Core Accumulation Fund', 'Core Accumulation Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSEPEUZ', 'HBSTPEU:HK', 'European Equity Fund', 'European Equity Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSFIGBZ', 'HSTGLBD:HK', 'Global Bond Fund', 'Global Bond Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSEPGBZ', 'HSPFVGE:HK', 'Global Equity Fund', 'Global Equity', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSMPGR0', 'HBSTPGR:HK', 'Growth Fund', 'Growth Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSETHSH', 'HMPFHSH:HK', 'Hang Seng China Enterprises Index Tracking Fund', 'HSI H.Share', 'Hang Seng Investment Management'
), (
'HSETHSI', 'HBSTPHS:HK', 'Hang Seng Index Tracking Fund', 'Hang Seng Index Tracking Fund', 'Hang Seng Investment Management'
), (
'HSEPCHK', 'HBSTPHK:HK', 'Hong Kong and Chinese Equity Fund    ', 'Hong Kong and Chinese Equity Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSMMPFC', 'HBSTPCP:HK', 'MPF Conservative Fund', 'MPF Conservative Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSEPNAZ', 'HBSTPNA:HK', 'North American Equity Fund', 'North American Equity Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSMPSB4', 'HSTSTAB:HK', 'Stable Fund', 'Stable Fund', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSEPAPV', 'HMPFPEQ:HK', 'ValueChoice Asia Pacific Equity Fund', 'ValueChoice Asia-Pacific', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSMPVB8', 'HMPFBAL:HK', 'ValueChoice Balanced Fund', 'ValueChoice Balanced', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSETEUV', 'HMPFEEQ:HK', 'ValueChoice European Equity Fund', 'ValueChoice European', 'HSBC Investment Funds (Hong Kong) Limited'
), (
'HSETUSV', 'HMPFUSE:HK', 'ValueChoice US Equity Fund', 'ValueChoice US Equity', 'HSBC Investment Funds (Hong Kong) Limited'
);