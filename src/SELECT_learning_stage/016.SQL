SELECT DISTINCT A.model, B.model, A.speed, A.ram
FROM PC AS A,
     PC AS B
WHERE A.model > B.model
  AND A.speed = B.speed
  AND A.ram = B.ram
