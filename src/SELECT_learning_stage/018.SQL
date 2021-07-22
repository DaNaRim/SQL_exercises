SELECT DISTINCT prod.maker, print.price
  FROM printer      AS print
       JOIN product AS prod ON print.model = prod.model
 WHERE print.color = 'y'
   AND print.price = (SELECT MIN(price)
                        FROM printer
                       WHERE color = 'y')
