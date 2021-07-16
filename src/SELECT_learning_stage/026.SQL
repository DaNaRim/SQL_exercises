SELECT AVG(price)
FROM (
         SELECT price
         FROM PC
                  JOIN Product pr ON PC.model = pr.model
         WHERE pr.maker = 'A'
         UNION ALL
         SELECT price
         FROM Laptop l
                  JOIN Product pr ON l.model = pr.model
         WHERE pr.maker = 'A'
     ) AS a;

/*
WITH M AS (
    SELECT model, price
    FROM pc
    UNION ALL
    SELECT model, price
    FROM Laptop
)
SELECT avg(M.price)
FROM Product p
         JOIN M ON p.model = M.model
WHERE p.maker = 'A'
*/
