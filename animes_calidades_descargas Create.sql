-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.animes_calidades_descargas
-- -----------------------------------------------------

-- DROP TABLE ra_animes.animes_calidades_descargas;

CREATE TABLE IF NOT EXISTS ra_animes.animes_calidades_descargas
  (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico de la calidad.", 
  siglas VARCHAR(5) NOT NULL COMMENT "siglas de la calidad.", 
  nombre VARCHAR(20) NOT NULL COMMENT "Nombre de la calidad.", 
  descripcion VARCHAR(150) COMMENT "Descripcion de la calidad.", 
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
COMMENT = "Registra la calidad en la que se descargo el anime";

COMMIT;

SELECT * FROM ra_animes.animes_calidades_descargas;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.animes_calidades_descargas
-- -----------------------------------------------------

INSERT INTO ra_animes.animes_calidades_descargas (id, siglas, nombre, descripcion , ERASED) VALUES
  (1, "N/A", "No Aplica", "Calidad por Default, ya que no se a descargado el anime", 1), 
  (2, "HDTV", "HDTVRip", "El origen del contenido fue una transmisión analógica o digital de televisión en alta definición", 1), 
  (3, "DVD", "DVDRip", "La fuente fue un DVD", 1), 
  (4, "BD", "BDRip", "La fuente fue un Blu-Ray", 1), 
  (5, "WEB", "WEBRip", "La fuente fue un servicio online o un streaming", 1);

COMMIT;

ALTER TABLE ra_animes.animes_calidades_descargas AUTO_INCREMENT=6;

COMMIT;

SELECT * FROM ra_animes.animes_calidades_descargas;