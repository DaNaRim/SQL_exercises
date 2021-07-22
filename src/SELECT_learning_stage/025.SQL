SELECT DISTINCT maker
  FROM product
 WHERE type = 'Printer'
   AND maker IN (SELECT DISTINCT maker
                   FROM product
                  WHERE model IN (SELECT model
                                    FROM pc
                                   WHERE ram = (SELECT MIN(ram) FROM pc)
                                     AND speed = (SELECT MAX(speed)
                                                    FROM pc
                                                   WHERE ram = (SELECT MIN(ram) FROM pc)
                                                 )
                                 )
                );


SELECT DISTINCT pr.maker
  FROM product AS pr, pc
 WHERE pr.type = 'PC'
   AND pr.model = pc.model
   AND pc.ram = (SELECT MIN(ram) FROM pc)
   AND pc.speed = (SELECT MAX(speed)
                     FROM pc
                    WHERE ram = (SELECT MIN(ram) FROM pc)
                  )
   AND EXISTS(SELECT 'x'
                FROM product AS pr2
               WHERE pr2.type = 'Printer'
                 AND pr2.maker = pr.maker);



   SELECT DISTINCT maker
     FROM product
    WHERE type = 'Printer'
INTERSECT
   SELECT DISTINCT pr.maker
     FROM product AS pr
          INNER JOIN pc ON pc.model = pr.model
    WHERE pr.type = 'PC'
      AND pc.ram = (SELECT MIN(ram) FROM pc)
      AND pc.speed = (SELECT DISTINCT MAX(speed)
                        FROM pc
                       WHERE ram = (SELECT MIN(ram) FROM pc)
                     )
