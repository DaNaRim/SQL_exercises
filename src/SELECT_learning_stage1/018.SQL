SELECT DISTINCT maker, price
FROM Printer
         JOIN Product ON Printer.model = Product.model
WHERE color = 'y'
  AND price = (SELECT MIN(price) FROM Printer WHERE color = 'y')
