SELECT DISTINCT 'Laptop', model, speed
FROM Laptop
WHERE speed < ALL (SELECT speed FROM PC)
