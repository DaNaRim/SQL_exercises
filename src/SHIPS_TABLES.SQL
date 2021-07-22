CREATE TABLE classes
(
    class        VARCHAR(50) PRIMARY KEY,
    type         VARCHAR(2) CHECK (type IN ('bb', 'bc')),
    country      VARCHAR(20),
    numguns      INT,
    bore         DECIMAL,
    displacement INT
);

CREATE TABLE ships
(
    name     VARCHAR(50) PRIMARY KEY,
    class    VARCHAR(50) REFERENCES classes (class),
    launched INT
);

CREATE TABLE battles
(
    name VARCHAR(20) PRIMARY KEY,
    date DATE
);

CREATE TABLE outcomes
(
    ship   VARCHAR(50),
    battle VARCHAR(50) REFERENCES battles (name),
    result VARCHAR(50) CHECK (result IN ('sunk', 'damaged', 'OK')),
    CONSTRAINT outcomes_pk PRIMARY KEY (ship, battle)
);
