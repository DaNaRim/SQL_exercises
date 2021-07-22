SELECT country, CAST(AVG(POWER(bore, 3) / 2) AS DECIMAL(6, 2)) AS weight
  FROM (SELECT c.country, c.bore, s.name
          FROM classes    AS c
               JOIN ships AS s ON c.class = s.class
         UNION
        SELECT c.country, c.bore, o.ship
          FROM classes       AS c
               JOIN outcomes AS o ON c.class = o.ship
         WHERE o.ship NOT IN (SELECT name FROM ships)
       ) q
 GROUP BY country;
