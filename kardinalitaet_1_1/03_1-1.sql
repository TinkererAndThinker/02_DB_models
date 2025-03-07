-- Vorbereitungen

DROP Table IF EXISTS design.servants;
DROP Table IF EXISTS design.cats;

-- Mastertabelle (MT): unverändert

CREATE TABLE IF NOT EXISTS design.cats
(
  id        INT         NOT NULL AUTO_INCREMENT COMMENT 'Index',
  cat_name  VARCHAR(45) NOT NULL COMMENT 'Name',
  fur_color VARCHAR(45) NOT NULL COMMENT 'FellFarbe',
  PRIMARY KEY (id)
) COMMENT 'Katzen';

-- Struktur: MT

DESCRIBE design.cats;

-- Inserts: MT 

INSERT INTO design.cats (id, cat_name,fur_color) VALUES 
(DEFAULT, "Grizabella", "white"),
(DEFAULT, "Alonzo", "grey"),
(DEFAULT, "Mausi", "striped")
;



-- Inhalte: MT

SELECT * FROM design.cats;


-- Detailtabelle: Verbindung zur MT über Fremdschlüssel

CREATE TABLE design.servants
(
  id           INT         NOT NULL AUTO_INCREMENT COMMENT 'PK',
  servant_name VARCHAR(45) NOT NULL COMMENT 'DienerName',
  yrs_served   TINYINT     NOT NULL COMMENT 'DienstJahre',
  cats_id      INT         NOT NULL COMMENT 'FK',
  PRIMARY KEY (id)
) COMMENT 'Diener';



ALTER TABLE design.servants
  ADD CONSTRAINT UQ_cats_id UNIQUE (cats_id);

ALTER TABLE design.servants
  ADD CONSTRAINT FK_cats_TO_servants
    FOREIGN KEY (cats_id)
    REFERENCES cats (id);

    
INSERT INTO design.servants (id, servant_name, yrs_served, cats_id) VALUES 
(DEFAULT, "Alfred", 5, 1),
(DEFAULT, "James", 2, 2),
(DEFAULT, "Jane", 10, 3)
;
DESCRIBE design.servants;