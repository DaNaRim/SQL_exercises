SELECT DISTINCT maker
FROM Product
WHERE type = 'PC'
  AND maker NOT IN (SELECT DISTINCT maker
                    FROM Product
                    WHERE type = 'Laptop')
