-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.animes_clasificaciones
-- -----------------------------------------------------

-- DROP TABLE ra_animes.animes_clasificaciones;

CREATE TABLE IF NOT EXISTS ra_animes.animes_clasificaciones (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico de clasificaciones", 
  nombre VARCHAR(25) NOT NULL COMMENT "Nombre de la clasifiacion", 
  siglas VARCHAR(7) NOT NULL COMMENT "Siglas de las clasifiaciones.", 
  descripcion VARCHAR(100) COMMENT "Descripcion breve de la clasificacion. Opcional", 
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.", 
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.", 
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.", 
  PRIMARY KEY (id), 
  UNIQUE INDEX nombre_unique (nombre), 
  UNIQUE INDEX siglas_unique (siglas)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = "Registra las diferentes clasificaciones de los animes. Un anime solo tiene una clasificacion";

COMMIT;

SELECT * FROM ra_animes.animes_clasificaciones;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.animes_clasificaciones
-- -----------------------------------------------------

INSERT INTO ra_animes.animes_clasificaciones (id, siglas, nombre, descripcion, erased) VALUES 
  (1, "UR", "Unknown Rating", "Se desconoce la Clasificacion.", 1), 
  (2, "G", "All Ages", "Dirigido a un publico general.", 1), 
  (3, "PG", "Children", "Dirigido a un publico infantil.", 1), 
  (4, "PG-13", "Teens 13 or older", "Dirigido a adolecentes.", 1), 
  (5, "R-17+", "Violence & Profanity", "Dirigido a un publico maduro.", 1), 
  (6, "Rx", "Hentai", "Dirigido a adultos, contiene sexo explicito.", 1), 
  (7, "R+", "Mild Nudity", "Dirigido a adultos, contiene desnudos.", 1);

COMMIT;

ALTER TABLE ra_animes.animes_clasificaciones AUTO_INCREMENT=8;

COMMIT;

SELECT * FROM ra_animes.animes_clasificaciones;