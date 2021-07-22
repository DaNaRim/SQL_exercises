SELECT DISTINCT 'Laptop', model, speed
  FROM laptop
 WHERE speed < ALL (SELECT speed FROM pc)
