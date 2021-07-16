SELECT DISTINCT maker, speed
FROM Product
         JOIN Laptop ON Product.model = Laptop.model
WHERE hd >= 10
