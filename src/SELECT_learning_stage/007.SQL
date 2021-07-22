SELECT *
  FROM (SELECT model, price
          FROM pc
         UNION
        SELECT model, price
          FROM laptop
         UNION
        SELECT model, price
          FROM printer
       ) AS a
 WHERE a.model IN (SELECT model
                     FROM product
                    WHERE maker = 'B')
