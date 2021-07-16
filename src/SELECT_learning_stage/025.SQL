SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'
  AND maker IN (SELECT DISTINCT maker
                FROM Product
                WHERE model IN (
                    SELECT model
                    FROM PC
                    WHERE ram = (SELECT MIN(ram) FROM PC)
                      AND speed = (SELECT MAX(speed) FROM PC WHERE ram = (SELECT MIN(ram) FROM PC))
                )
)

/*
SELECT DISTINCT product.maker
FROM product,
     PC
WHERE product.type = 'PC'
  AND product.model = PC.model
  AND PC.ram = (SELECT MIN(ram) FROM PC)
  AND PC.speed = (SELECT MAX(speed) FROM PC WHERE ram = (SELECT min(ram) FROM PC))
  AND exists(SELECT 'x'
             FROM product p
             WHERE p.type = 'Printer'
               AND p.maker = product.maker)
*/

/*
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'
INTERSECT
SELECT DISTINCT pr.maker
FROM product pr
         INNER JOIN PC ON PC.model = pr.model
WHERE pr.type = 'PC'
  AND PC.ram = (SELECT MIN(ram) FROM PC)
  AND PC.speed = (SELECT distinct MAX(speed)
                  FROM PC
                  WHERE ram = (SELECT MIN(ram) FROM PC))
*/
