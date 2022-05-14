-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.generos
-- -----------------------------------------------------

-- DROP TABLE ra_animes.generos;

CREATE TABLE IF NOT EXISTS ra_animes.generos (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "identificador unico del genero.",
  nombre VARCHAR(15) NOT NULL COMMENT "nombre del genero.",
  nombre_esp VARCHAR(25) NOT NULL COMMENT "nombre en español del genero.",
  descripcion VARCHAR(200) COMMENT "descripcion del genero. Opcional",
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
COMMENT = "Registra los generos que posee un anime, un anime puede tener mas de un genero.";

COMMIT;

SELECT * FROM ra_animes.generos;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.generos
-- -----------------------------------------------------

INSERT INTO ra_animes.generos (id,nombre, nombre_esp, descripcion, ERASED) VALUES
  (1,"Unknown Genres", "Desconocido","No Aplica", 1),
  (2,"Action", "Acción","Este género se distingue por estar lleno de frecuentes enfrentamientos, tiroteos, peleas, explosiones, situaciones de mucha adrenalina y muy intensas.", 1),
  (3,"Adventure", "Aventura","En este tipo de animes y mangas se refleja un mundo heroico, llenos de combate y actos de mucho valor.", 1),
  (4,"Avant Garde", "Vanguardia","", 1),
  (5,"Award Winning", "Galardonado","", 1),
  (6,"Boys Love", "Amor de Chicos","Su temática gira en torno a la relación emocional, sentimental o sexual entre dos o más personajes del mismo sexo; entre hombres Yaoi).", 1),
  (7,"Comedy", "Comedia","Este tipo de género está cargado de escenas con toques humorísticos, donde se puede desprender el subgénero de la parodia y el humor negro.", 1),
  (8,"Drama", "Drama","", 1),
  (9,"Ecchi", "Ecchi","En este género se presentan continuamente situaciones de semidesnudos o pervertidos con toques cómicos, pero sin llegar al acto sexual.", 1),
  (10,"Erotica", "Erótica","", 1),
  (11,"Fantasy", "Fantasia","", 1),
  (12,"Girls Love", "Amor de Chicas","Su temática gira en torno a la relación emocional, sentimental o sexual entre dos o más personajes del mismo sexo; entre mujeres Yuri).", 1),
  (13,"Gourmet", "Gastronomo","", 1),
  (14,"Hentai", "Hentai","Este género suele estar lleno de lenguaje vulgar, desnudos y actos sexuales. Su trama se caracteriza por contener actos sexuales entre humanos y seres con tentáculos.", 1),
  (15,"Horror", "Horror","El objetivo principal de este tipo de historia es llegar a generar miedo y suspenso, la característica que más destaca son los efectos y sensaciones que logra causar en su audiencia.", 1),
  (16,"Mystery", "Misterio","Los animes y mangas de misterio suelen tener un carácter sobrenatural, místico o de suspenso, en el cual la solución o el desenlace no tienen por qué ser lógicos.", 1),
  (17,"Romance", "Romance","Su trama gira en torno a las relaciones entre los personajes de la serie, suelen estar cargados de escenas románticas y con mucho sentimentalismo. Es uno de los géneros del anime más usados.", 1),
  (18,"Sci-Fi", "Ciencia Ficción","En este tipo de animaciones, como su nombre lo indica, están desarrolladas en un mundo ficticio o imaginario, en este tipo de género se explotan al máximo los límites de la imaginación.", 1),
  (19,"Slice of Life", "Recuentos De La Vida","Son historias que centran en experiencias de vida cotidiana", 1),
  (20,"Sports", "Deportes","", 1),
  (21,"Supernatural", "Sobrenatural","", 1),
  (22,"Suspense", "Suspenso","Son historias que se caracterizan por involucrar al público a partir de sucesos inesperados, a partir de lo cual el relato toma un rumbo totalmente distinto y cambia de tono", 1);

COMMIT;

ALTER TABLE ra_animes.generos AUTO_INCREMENT=23;

COMMIT;

SELECT * FROM ra_animes.generos;