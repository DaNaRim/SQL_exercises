WITH tab AS (
    SELECT model, price
    FROM PC
    WHERE price = (SELECT MAX(price) FROM PC)
    UNION
    SELECT model, price
    FROM Laptop
    WHERE price = (SELECT MAX(price) FROM Laptop)
    UNION
    SELECT model, price
    FROM Printer
    WHERE price = (SELECT MAX(price) FROM Printer))
SELECT model
FROM tab
WHERE price = (SELECT MAX(price) FROM tab)
