SELECT Ships.class, Ships.name, Classes.country
FROM Ships
         JOIN Classes ON Classes.class = Ships.class
    AND Classes.numGuns >= 10
