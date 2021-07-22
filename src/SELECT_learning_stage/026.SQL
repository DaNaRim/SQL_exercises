SELECT AVG(price)
  FROM (SELECT price
          FROM pc
               JOIN product AS pr ON pc.model = pr.model
         WHERE pr.maker = 'A'
         UNION ALL
        SELECT price
          FROM laptop AS    l
               JOIN product pr ON l.model = pr.model
         WHERE pr.maker = 'A'
       ) AS a;


  WITH m AS (SELECT model, price
               FROM pc
              UNION ALL
             SELECT model, price
               FROM laptop
            )
SELECT AVG(m.price)
  FROM product AS p
       JOIN m ON p.model = m.model
 WHERE p.maker = 'A'

