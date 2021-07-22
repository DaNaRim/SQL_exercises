SELECT s.class, s.name, c.country
  FROM ships        AS s
       JOIN classes AS c ON c.class = s.class
                         AND c.numguns >= 10
