SELECT model, price
  FROM printer
 WHERE price = (SELECT MAX(price) FROM printer)
