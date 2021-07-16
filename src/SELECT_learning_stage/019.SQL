SELECT maker, AVG(screen)
FROM Product
         JOIN Laptop ON Laptop.model = Product.model
GROUP BY maker
