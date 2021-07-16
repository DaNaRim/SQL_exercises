SELECT DISTINCT maker
FROM Product
WHERE model IN (SELECT model FROM PC WHERE speed >= 450)
