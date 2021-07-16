CREATE TABLE Product
(
    maker VARCHAR,
    model INT PRIMARY KEY,
    type  VARCHAR CHECK (type IN ('PC', 'Laptop', 'Printer'))
);

CREATE TABLE PC
(
    code  INT PRIMARY KEY,
    model INT REFERENCES Product (model),
    speed INT,
    ram   INT,
    hd    INT,
    cd    VARCHAR,
    price INT
);

CREATE TABLE Laptop
(
    code   INT PRIMARY KEY,
    model  INT REFERENCES Product (model),
    speed  INT,
    ram    INT,
    hd     INT,
    price  INT,
    screen INT
);

CREATE TABLE Printer
(
    code  INT PRIMARY KEY,
    model INT REFERENCES Product (model),
    color VARCHAR CHECK (color IN ('y', 'n')),
    type  VARCHAR CHECK (type IN ('Laser', 'Jet', 'Matrix')),
    price INT
);