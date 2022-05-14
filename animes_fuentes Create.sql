-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.animes_fuentes
-- -----------------------------------------------------

-- DROP TABLE ra_animes.animes_fuentes;

CREATE TABLE IF NOT EXISTS ra_animes.animes_fuentes (
 id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "identificador unico de la fuente.", 
 nombre VARCHAR(15) NOT NULL COMMENT "nombre de la fuente.", 
 nombre_esp VARCHAR(25) NOT NULL COMMENT "nombre en español de la fuente.", 
 descripcion VARCHAR(150) COMMENT "descripcion breve de la fuente. Opcional", 
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
COMMENT = "Registra la fuente original del anime, un anime se basa en solo un tipo.";

COMMIT;

SELECT * FROM ra_animes.animes_fuentes;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.animes_fuentes
-- -----------------------------------------------------

INSERT INTO ra_animes.animes_fuentes (id,nombre, nombre_esp, descripcion, erased) VALUES
  (1, "Unknown Source", "Fuente Desconocida", "Para animes basados en fuentes del Anime desconocida", 1),
  (2, "4-koma manga", "Manga de Cuatro Viñetas", "Para animes basados en mangas de cuatro viñetas", 1),
  (3, "Book", "Libro", "Para animes basados en Libros", 1),
  (4, "Card Game", "Juego de Cartas", "Para animes basados en Juegos de cartas", 1),
  (5, "Digital Manga", "Manga Digital", "Para animes badados en mangas digitales", 1),
  (6, "Game", "Juego", "Para Animes Basados en juegos", 1),
  (7, "Light Novel", "Novela Ligera", "Para animes basados en novelas ligeras", 1),
  (8, "Manga", "Manga", "para animes basadosa en mangas", 1),
  (9, "Mixed Media", "Medio mixto", "PAra animes basados en medios mixtos", 1),
  (10, "Music", "Musica", "Para animes o cortos animamos basados en temas musicales", 1),
  (11, "Novel", "Novela", "Para animes basados en Novelas", 1),
  (12, "Original", "Original", "Para animes cien por ciento oroginales", 1),
  (13, "Other", "Otro", "Para animes basados en otras fuentes", 1),
  (14, "Picture Book", "Libro de Fotos", "Para animes basados en libros fotograficos", 1),
  (15, "Radio", "Radio", "", 1),
  (16, "Visual Novel", "Novela Visual", "Para animes basados en Novelas Visuales", 1),
  (17, "Web Manga", "Manga WEB", "Para animes basados en mangas WEB", 1),
  (18, "Web Novel", "Novela WEB", "Para animes basados en Novelas WEB", 1);

COMMIT;

ALTER TABLE ra_animes.animes_fuentes AUTO_INCREMENT=19;

COMMIT;

SELECT * FROM ra_animes.animes_fuentes;