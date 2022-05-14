-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.tipos
-- -----------------------------------------------------

-- DROP TABLE ra_animes.tipos;

CREATE TABLE IF NOT EXISTS ra_animes.tipos (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico del tipo.",
  nombre VARCHAR(15) NOT NULL COMMENT "siglas o nombre del tipo.",
  nombre_esp VARCHAR(30) NOT NULL COMMENT "nombre en español del tipo.",
  descripcion VARCHAR(150) NOT NULL COMMENT "Descripcion del tipo.",
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.",
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.",
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.",
  PRIMARY KEY (id),
  UNIQUE INDEX nombre_unique (nombre)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = "Registra el tipo, se puede tener solo uno, pero puede cambiar";

COMMIT;

SELECT * FROM ra_animes.tipos;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.tipos
-- -----------------------------------------------------

INSERT INTO ra_animes.tipos (id, nombre, nombre_esp, descripcion, ERASED) VALUES
  (1,"Unknown Type","Desconocido","No Aplica", 1),
  (2,"Movie","Pelicula","Son los largometrajes producidos por las compañías, pueden ser historias originales basadas en algún manga o muchas veces en las series de anime.", 1),
  (3,"Music","Musica","Cortos musicales, basados normalmente en los temas de apertura o cierre de un anime", 1),
  (4,"ONA","Original Net Animation","Animación diseñado para su distribución en Internet. El formato ONA aún no es muy usado y su duración es por lo general corta.", 1),
  (5,"OVA","Original Video Animation","También only video available. Son producciones animadas destinadas para su consumo en video que normalmente no se emiten en televisión.", 1),
  (6,"Special","Especial","Especial como bonificación de la serie, a veces no está relacionado con la historia básica que se muestra en la serie de televisión." ,1),
  (7,"TV", "Series de televisión","Son el formato más común y la mayoría están basadas en un manga o en una novela.", 1),
  (8,"Doujinshi", "autopublicados", "Los Doujinshi son mangas autopublicados. Se trata normalmente de fanzines de manga.", 1),
  (9,"Light Novel", "Novela Ligera", "Género literario típico japonés caracterizado por ser redactado con gramática simple.", 1),
  (10,"Manga", "Manga", "Manga es la palabra japonesa para designar las historietas en general. Fuera de Japón, se utiliza para referirse a las historietas de origen japonés.", 1),
  (11,"Manhua", "Manhua", "Manhua es el nombre con que se designa a la historieta o cómic en China y Taiwán,", 1),
  (12,"Manhwa", "Manhwa", "Manhwa es el término general coreano utilizado para denominar las tiras cómicas e historietas.", 1),
  (13,"Novel", "Novela", "Género literario típico japonés.", 1),
  (14,"One-shot", "Un solo capítulo", "El one-shot se usa para designar a una historieta piloto o independiente cuya historia se diseña para durar una sola edición", 1),
  (15,"Web Novel", "Novela Web", "Son historias escritas por autores, los cuales publican sus capítulos periódicamente en foros o páginas web.", 1);

COMMIT;

ALTER TABLE ra_animes.tipos AUTO_INCREMENT=16;

COMMIT;

SELECT * FROM ra_animes.tipos;