SELECT pr.maker, MAX(pc.price)
  FROM product AS pr
       JOIN pc ON pr.model = pc.model
 GROUP BY pr.maker
