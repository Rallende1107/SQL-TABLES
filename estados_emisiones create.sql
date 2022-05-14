-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.estados_emisiones
-- -----------------------------------------------------

-- DROP TABLE ra_animes.estados_emisiones;

CREATE TABLE IF NOT EXISTS ra_animes.estados_emisiones (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico del estado.", 
  nombre VARCHAR(25) NOT NULL COMMENT "Nombre del estado.", 
  siglas VARCHAR(4) NOT NULL COMMENT "Siglas del estado.", 
  nombre_esp VARCHAR(25) NOT NULL COMMENT "Nombre del estado en español.", 
  descripcion VARCHAR(150) COMMENT "Descripcion breve del estado. Opcional.", 
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.", 
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.", 
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.", 
  PRIMARY KEY (id), 
  UNIQUE INDEX nombre_unique (nombre), 
  UNIQUE INDEX siglas_unique (siglas), 
  UNIQUE INDEX nombre_esp_unique (nombre_esp)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = 'Registra las diferentes estados de la emision,  Un anime,  manga o novela puede solo tener un estado,  el cual cambia con el tiempo';

COMMIT;

SELECT * FROM ra_animes.estados_emisiones;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.estados_emisiones
-- -----------------------------------------------------

INSERT INTO ra_animes.estados_emisiones (id, nombre, nombre_esp, descripcion, Siglas, ERASED) VALUES
  (1, 'Unknown Status', 'Estado Desconocido', "Estado de emisión desconocido.", "US" , 1), 
  (2, 'Not yet aired', 'Aun No Emitido', "Emision aun no inicia.", "NYA", 1), 
  (3, 'Currently Airing', 'Actualmente Al Aire', "En Emision.", "CA", 1), 
  (4, 'Finished Airing', 'Emision Terminada', "Emision Terminada.", "FA", 1);

COMMIT;

ALTER TABLE ra_animes.estados_emisiones AUTO_INCREMENT=5;

COMMIT;

SELECT * FROM ra_animes.estados_emisiones;
