SELECT pr.maker, AVG(pc.hd)
FROM Product pr
         JOIN PC pc ON pr.model = pc.model
WHERE maker IN (SELECT DISTINCT maker FROM Product WHERE type = 'Printer')
GROUP BY pr.maker
