SELECT DISTINCT maker
  FROM product
 WHERE type = 'PC'
   AND maker NOT IN (SELECT DISTINCT maker
                       FROM product
                      WHERE type = 'Laptop')
