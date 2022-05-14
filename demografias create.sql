-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.demografias
-- -----------------------------------------------------

-- DROP TABLE ra_animes.demografias;

CREATE TABLE IF NOT EXISTS ra_animes.demografias (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico de las demografias", 
  nombre VARCHAR(45) NOT NULL COMMENT "Nombre de la demografia", 
  descripcion VARCHAR(150) COMMENT "Descripcion breve de la demografia. Opcional", 
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.", 
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.", 
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.", 
  PRIMARY KEY (id), 
  UNIQUE INDEX nombre_unique (nombre)
 )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = "Registra las diferentes demografias de los animes y mangas. Un anime puede tener varias demografias.";

COMMIT;

SELECT * FROM ra_animes.demografias;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.demografias
-- -----------------------------------------------------

USE ra_animes;

INSERT INTO ra_animes.demografias (id, nombre, descripcion, erased) VALUES
  (1, "Unknown Demographic", "Se desconoce la demografia especifica.", 1), 
  (2, "Josei", "Dirigido específicamente a un público femenino más adulto o maduro.", 1), 
  (3, "Kids", "Más enfocado principalmente hacia el público infantil.", 1), 
  (4, "Seinen", "Enfocado a hombres adultos, más adulto o maduro.", 1), 
  (5, "Shoujo", "Enfocado a público adolescente femenino.", 1), 
  (6, "Shounen", "Enfocado para chicos adolescentes o preadolescentes protagonizado por un chico adolescente.", 1);

COMMIT;

ALTER TABLE ra_animes.demografias AUTO_INCREMENT=7;

COMMIT;

SELECT * FROM ra_animes.demografias;