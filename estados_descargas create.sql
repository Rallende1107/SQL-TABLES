-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.estados_descargas
-- -----------------------------------------------------

-- DROP TABLE ra_animes.estados_descargas;

CREATE TABLE IF NOT EXISTS ra_animes.estados_descargas (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico de la descarga.", 
  nombre VARCHAR(45) NOT NULL COMMENT "Nombre de la descarga del anime.", 
  siglas VARCHAR(2) NOT NULL COMMENT "Siglas del nombre del estado de descarga.", 
  descripcion VARCHAR(100) COMMENT "Descripcion del estado. Opcional.", 
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
COMMENT = 'Registra los estados de las descargas, un anime solo puede tener un estado de descarga, pero puede cambiar.';

commit;

SELECT * FROM ra_animes.estados_descargas;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.estados_descargas
-- -----------------------------------------------------

INSERT INTO ra_animes.estados_descargas (id, siglas, nombre, descripcion, erased) VALUES 
  (1, "NA", "No Aplica", "Estado para animes no Activos.", 1), 
  (2, "DE", "Descargando", "Estado para Animes en emision o No descargados completamente.", 1), 
  (3, "DC", "Descarga Completa", "Estado para animes descargados completamente.", 1), 
  (4, "ND", "No Descargado", "Estado para animes activos, y cuya descarga no se ha realizado.", 1), 
  (5, "NE", "No Encontrado", "Estado para animes que no se han estrenado pero estan activos." , 1);

COMMIT;

ALTER TABLE ra_animes.estados_descargas AUTO_INCREMENT=6;

COMMIT;

SELECT * FROM ra_animes.estados_descargas;