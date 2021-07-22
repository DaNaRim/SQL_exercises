SELECT model, speed, hd
  FROM pc
 WHERE cd IN ('12x', '24x')
   AND price < 600
