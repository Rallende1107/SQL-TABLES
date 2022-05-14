-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.animes_temporadas
-- -----------------------------------------------------

-- DROP TABLE ra_animes.animes_temporadas;

CREATE TABLE IF NOT EXISTS ra_animes.animes_temporadas (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico de la temporada.",
  nombre VARCHAR(20) NOT NULL COMMENT "nombre de la temporada.",
  nombre_esp VARCHAR(21) NOT NULL COMMENT "nombre en español de la temporada.",
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.",
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.",
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.",
  PRIMARY KEY (id),
  UNIQUE INDEX nombre_unique (nombre),
  UNIQUE INDEX nombre_esp_unique (nombre_esp)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = "Registra las temporadas de los animes, un anime se estrana en solo una temporada";

COMMIT;

SELECT * FROM ra_animes.animes_temporadas;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.animes_temporadas
-- -----------------------------------------------------

INSERT INTO ra_animes.animes_temporadas (id, nombre, nombre_esp, erased) VALUES
(1, "Unknown Premiered", "Temporada Desconocida",1),
(2, "Fall", "Otoño",1),
(3, "Summer", "Verano",1),
(4, "Spring", "Primavera",1),
(5,"Winter", "Invierno",1);

COMMIT;

ALTER TABLE ra_animes.animes_temporadas AUTO_INCREMENT=6;

COMMIT;

SELECT * FROM ra_animes.animes_temporadas;
