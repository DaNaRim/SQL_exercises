CREATE TABLE Classes
(
    class        VARCHAR(50) PRIMARY KEY,
    type         VARCHAR(2) CHECK (type IN ('bb', 'bc')),
    country      VARCHAR(20),
    numGuns      INT,
    bore         DECIMAL,
    displacement INT
);

CREATE TABLE Ships
(
    name     VARCHAR(50) PRIMARY KEY,
    class    VARCHAR(50) REFERENCES Classes (class),
    launched INT
);

CREATE TABLE Battles
(
    name VARCHAR(20) PRIMARY KEY,
    date DATE
);

CREATE TABLE Outcomes
(
    ship   VARCHAR(50) PRIMARY KEY,
    battle VARCHAR(50) REFERENCES Battles (name),
    result VARCHAR(50) CHECK (result IN ('sunk', 'damaged', 'OK'))
);
