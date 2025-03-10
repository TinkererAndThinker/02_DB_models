\! cls

-- 03. SELECTS / Servants, Products, Purchases

-- Einzeltabellen
SELECT * FROM design.servants;
SELECT * FROM design.products;
SELECT * FROM design.purchases;

-- Inner Join 1 / Kombi (servants / products / purchases)
SELECT
    *
FROM design.purchases
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
;

-- Welche Artikel hat X/Y gekauft?





-- Wieviele Produkte hat X gekauft?
-- "X kauft Y Produkte"





-- Wieviel Geld hat jeder Diener ausgegeben? SUM()





-- Wer hat das Produkt X gekauft?  
-- Irgendwas mit Lachs / Irgendwas mit Sauce LIKE
-- Spalten --> Diener / Produkt
-- WHERE / LIKE





-- Wie oft wurde das Produkt X gekauft?




-- Welche Umsätze hatte das Produkt X?
