SELECT model, speed, hd
FROM PC
WHERE cd IN ('12x', '24x')
  AND price < 600
