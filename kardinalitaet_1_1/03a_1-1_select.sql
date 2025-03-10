
-- SELECTS
-- SELECTS

-- Einzeltabellen
SELECT * FROM design.cats;
SELECT * FROM design.servants;

-- Kreuzprodukt (Kartesisches Produkt)
SELECT * FROM design.cats JOIN design.servants;

-- Inner Join 1 / Gesamte Tabelle
SELECT
    *
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
;


-- Inner Join 2 / (Wer dient wem?)
-- Wer dient Grizabella?
-- Wem dient X?
SELECT
    cat_name AS Katze,
    servant_name AS Diener
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
-- Filtern mit WHERE
-- WHERE cat_name = "Grizabella"
WHERE servant_name = "Arian"
;


SELECT
    CONCAT(servant_name, " ist der Diener von ", cat_name) AS Dienstverhaeltnis
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
-- Filtern mit WHERE
-- WHERE cat_name = "Grizabella"
WHERE servant_name = "Hubert"
;



-- Inner Join 2a / (Wer dient wem?)
-- "X ist der Diener von Y"  / Dienstverhältnis




-- Inner Join 3 / Dienstzeit


-- Inner Join 4 / Dienstzeit 
-- "X - der Diener von Y - ist der Diener mit der längsten Dienstzeit" // MAX()



-- 1. LIMIT (QUICK & DIRTY / Nur bei einem MAX-Wert vollständige Lösung)




-- 2. Subquery

-- QUERY / MAX()
-- SELECT MAX(yrs_served) FROM design.servants;





-- 3. VIEW / QUERY / MAX() in VIEW gekapselt
