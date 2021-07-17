SELECT COUNT(q.maker)
FROM (
         SELECT maker
         FROM Product
         GROUP BY maker
         HAVING COUNT(model) = 1
     ) q
