SELECT i.point, i.date, i.inc, o.out
  FROM income_o            AS i
       LEFT JOIN outcome_o AS o ON o.point = i.point
                                AND o.date = i.date
 UNION
SELECT o.point, o.date, i.inc, o.out
  FROM outcome_o          AS o
       LEFT JOIN income_o AS i ON o.point = i.point
                               AND o.date = i.date
