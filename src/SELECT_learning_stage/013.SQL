SELECT AVG(speed)
FROM PC
WHERE model IN (SELECT model FROM Product WHERE maker = 'A')
