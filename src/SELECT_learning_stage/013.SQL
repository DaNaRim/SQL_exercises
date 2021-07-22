SELECT AVG(speed)
  FROM pc
 WHERE model IN (SELECT model
                   FROM product
                  WHERE maker = 'A')
