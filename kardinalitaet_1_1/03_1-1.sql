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



-- Detailtabelle: Verbindung zur MT über Fremdschlüssel

CREATE TABLE IF NOT EXISTS design.servants
(
  id           INT           NOT NULL AUTO_INCREMENT COMMENT 'index',
  servant_name VARBINARY(45) NOT NULL COMMENT 'DienerName',
  yrs_served   TINYINT       NOT NULL COMMENT 'DienstJahre',
  id           INT           NOT NULL COMMENT 'Fremdschlüssel',
  PRIMARY KEY (id)
) COMMENT 'Diener';


-- Fremdschlüssel: DT
ALTER TABLE design.servants
  ADD CONSTRAINT FK_cats_TO_servants
    FOREIGN KEY (id)
    REFERENCES cats (id);

-- wichtig bei 1:1  UNIQUE im fk
ALTER TABLE design.servants
  ADD CONSTRAINT UQ_id UNIQUE (id);


-- Struktur: DT

DESCRIBE design.servants;

-- Inserts: DT

INSERT INTO design.servants (id, servant_name, yrs_served, cats_id) VALUES 
(DEFAULT, "Alfred", 5, 1),
(DEFAULT, "James", 2, 2),
(DEFAULT, "Jane", 10, 3)
;


-- Inhalte: DT

SELECT * FROM design.servants;
