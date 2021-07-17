CREATE TABLE Income_o
(
    point INT,
    date  DATE,
    inc   DECIMAL,
    CONSTRAINT income_pk PRIMARY KEY (point, date)
);

CREATE TABLE Outcome_o
(
    point INT,
    date  DATE,
    out   DECIMAL,
    CONSTRAINT outcome_pk PRIMARY KEY (point, date)
);

CREATE TABLE Income
(
    code  INT PRIMARY KEY,
    point INT,
    date  DATE,
    inc   DECIMAL
);


CREATE TABLE Outcome
(
    code  INT PRIMARY KEY,
    point INT,
    date  DATE,
    out   DECIMAL
)
