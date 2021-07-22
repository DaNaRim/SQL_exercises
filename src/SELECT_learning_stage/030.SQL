SELECT point, date, SUM(sum_out), SUM(sum_inc)
  FROM (SELECT point, date, SUM(inc) AS sum_inc, NULL AS sum_out
          FROM income
         GROUP BY point, date
         UNION
        SELECT point, date, NULL AS sum_inc, SUM(out) AS sum_out
          FROM outcome
         GROUP BY point, date
       ) q
 GROUP BY point, date
