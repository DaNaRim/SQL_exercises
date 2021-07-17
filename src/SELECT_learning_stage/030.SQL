SELECT point, date, SUM(sum_out), SUM(sum_inc)
FROM (SELECT point, date, SUM(inc) sum_inc, NULL sum_out
      FROM Income
      GROUP BY point, date
      UNION
      SELECT point, date, NULL sum_inc, SUM(out) sum_out
      FROM Outcome
      GROUP BY point, date) q
GROUP BY point, date
