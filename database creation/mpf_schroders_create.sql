CREATE TABLE "schrodersName" (
    "code"    VARCHAR(10),
    "tickerB"    VARCHAR(20),
    "fullName"    VARCHAR(100) NOT NULL UNIQUE,
    "oldCode"    VARCHAR(100) NOT NULL UNIQUE,
    "description"    VARCHAR(255),
    "assetMgmr"    VARCHAR(255),
    PRIMARY KEY("code")
);

CREATE TABLE "schrodersMpfNav" (
    "id"    INTEGER,
    "navDate"    VARCHAR(10) NOT NULL,
    "code"    VARCHAR(10),
    "nav"    DECIMAL(12,4),
    FOREIGN KEY("code") REFERENCES "schrodersName"("code") ON UPDATE CASCADE,
    PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO schrodersName ('code', 'tickerB', 'fullName', 'oldCode', 'assetMgmr') VALUES (
    "", "", "", "", ""
), (
    "", "", "", "", ""
);