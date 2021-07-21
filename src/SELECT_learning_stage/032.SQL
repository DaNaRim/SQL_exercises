SELECT country, CAST(AVG(POWER(bore, 3) / 2) AS DECIMAL(6, 2)) AS weight
FROM (SELECT country, bore, name
      FROM Classes AS c
               JOIN Ships AS s ON c.class = s.class
      UNION
      SELECT country, bore, ship
      FROM Classes AS c
               JOIN Outcomes AS o ON c.class = o.ship
      WHERE o.ship NOT IN (SELECT name FROM Ships)
     ) data
GROUP BY country;
