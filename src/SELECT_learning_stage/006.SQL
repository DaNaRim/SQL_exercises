SELECT DISTINCT p.maker, l.speed
  FROM product     AS p
       JOIN laptop AS l ON p.model = l.model
 WHERE l.hd >= 10
