CREATE TABLE product
(
    maker VARCHAR,
    model INT PRIMARY KEY,
    type  VARCHAR CHECK (type IN ('PC', 'Laptop', 'Printer'))
);

CREATE TABLE pc
(
    code  INT PRIMARY KEY,
    model INT REFERENCES product (model),
    speed INT,
    ram   INT,
    hd    INT,
    cd    VARCHAR,
    price INT
);

CREATE TABLE laptop
(
    code   INT PRIMARY KEY,
    model  INT REFERENCES product (model),
    speed  INT,
    ram    INT,
    hd     INT,
    price  INT,
    screen INT
);

CREATE TABLE printer
(
    code  INT PRIMARY KEY,
    model INT REFERENCES product (model),
    color VARCHAR CHECK (color IN ('y', 'n')),
    type  VARCHAR CHECK (type IN ('Laser', 'Jet', 'Matrix')),
    price INT
);
