SELECT p.maker, AVG(l.screen)
  FROM product     AS p
       JOIN laptop AS l ON l.model = p.model
 GROUP BY p.maker
