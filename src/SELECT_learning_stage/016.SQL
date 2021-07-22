SELECT DISTINCT a.model, b.model, a.speed, a.ram
  FROM pc AS a, pc AS b
 WHERE a.model > b.model
   AND a.speed = b.speed
   AND a.ram = b.ram
