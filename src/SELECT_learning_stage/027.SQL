SELECT pr.maker, AVG(pc.hd)
  FROM product AS pr
       JOIN pc ON pr.model = pc.model
 WHERE pr.maker IN (SELECT DISTINCT maker
                      FROM product
                     WHERE type = 'Printer')
 GROUP BY pr.maker
