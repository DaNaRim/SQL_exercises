SELECT DISTINCT maker
  FROM product
 WHERE model IN (SELECT model
                   FROM pc
                  WHERE speed >= 450)
