CREATE TABLE "hsbcFlexInvestName" (
    "code"    VARCHAR(10),
    "tickerB"    VARCHAR(20),
    "ISIN"    VARCHAR(20),
    "fullName"    VARCHAR(100) NOT NULL UNIQUE,
    "oldCode"    VARCHAR(100) NOT NULL UNIQUE,
    "description"    VARCHAR(255),
    "assetMgmr"    VARCHAR(255),
    PRIMARY KEY("code")
);

CREATE TABLE "hsbcFlexInvestNav" (
    "id"    INTEGER,
    "navDate"    VARCHAR(10) NOT NULL,
    "code"    VARCHAR(10),
    "nav"    DECIMAL(12,4),
    FOREIGN KEY("code") REFERENCES hsbcFlexInvestName("code") ON UPDATE CASCADE,
    PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO hsbcFlexInvestName ('code', 'ISIN', 'tickerB', 'fullName', 'oldCode', 'assetMgmr') VALUES (
    "HK0000465903", "HK0000465903", "HSBGMHD:HK", "HSBC Global Money Funds - Hong Kong Dollar (D)", "HHKDD", "HSBC Global Asset Management (Hong Kong) Limited"
),(
    "IE00BJXS6M75", "IE00BJXS6M75", "HSAS5KD:ID", "HSBC Global Funds ICAV - Global Aggregate Bond Index Fund (HCHKD)", "IGABH", "Tracking Index: Bloomberg Barclays Global Aggregate Bond Index (total return hedged to USD)"
),(
    "IE00BJXS6P07", "IE00BJXS6P07", "HSCBSHH:ID", "HSBC Global Funds ICAV - Global Corporate Bond Index Fund (HCHKD)", "IGCBH", "Tracking Index: Bloomberg Barclays Global Aggregate Corporate Bond Index (total return hedged to USD)"
),(
    "IE00BH4GHK17", "IE00BH4GHK17", "HSGEMHK:ID", "HSBC Global Funds ICAV - Global Emerging Market Government Bond Index Fund (HCHKD)", "IGEGH", "Tracking Index: J.P. Morgan EMBI Global Diversified Index (total return)"
),(
    "IE00BJLML261", "IE00BJLML261", "HSGEHCK:ID", "HSBC Global Funds ICAV - Global Equity Index Fund (HCHKD)", "IGEIH", "Tracking Index: Morgan Stanley Capital International World Net Total Return Index"
),(
    "IE00BK4W5M84", "IE00BK4W5M84", "HSUEHCH:ID", "HSBC Global Funds ICAV - US Equity Index Fund (HCHKD)", "IUSEH", "Tracking Index: S&P 500 Net Total Return Index"
),(
    "LU2076772057", "LU2076772057", "SSGOEFA:LX", "State Street Pacific Ex-Japan Index Equity Fund (Class A, HKD)", "SSGAAPXJ", "Tracking Index: Morgan Stanley Capital International Pacific exclude-Japan Index"
);