   SELECT pr.maker
     FROM product AS pr
          JOIN pc ON pr.model = pc.model
    WHERE pc.speed >= 750
INTERSECT
   SELECT pr.maker
     FROM product     AS pr
          JOIN laptop AS l ON pr.model = l.model
    WHERE l.speed >= 750
