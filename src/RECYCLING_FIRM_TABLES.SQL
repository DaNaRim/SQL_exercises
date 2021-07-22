CREATE TABLE income_o
(
    point INT,
    date  DATE,
    inc   DECIMAL,
    CONSTRAINT income_pk PRIMARY KEY (point, date)
);

CREATE TABLE outcome_o
(
    point INT,
    date  DATE,
    out   DECIMAL,
    CONSTRAINT outcome_pk PRIMARY KEY (point, date)
);

CREATE TABLE income
(
    code  INT PRIMARY KEY,
    point INT,
    date  DATE,
    inc   DECIMAL
);


CREATE TABLE outcome
(
    code  INT PRIMARY KEY,
    point INT,
    date  DATE,
    out   DECIMAL
);
