-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.temas
-- -----------------------------------------------------

-- DROP TABLE ra_animes.temas;

CREATE TABLE IF NOT EXISTS ra_animes.temas (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "identificador unico del tema",
  nombre VARCHAR(45) NOT NULL COMMENT "nombre del tema",
  nombre_esp VARCHAR(45) NOT NULL COMMENT "nombre del tema en español",
  descripcion VARCHAR (225) NOT NULL COMMENT "descripcion del tema abarcado por el anime",
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
COMMENT = "registra los temas, pueden ser mas de uno";

commit;

SELECT * FROM ra_animes.temas;

-- -----------------------------------------------------
-- INSERT  Table ra_animes.temas
-- -----------------------------------------------------

INSERT INTO ra_animes.temas (nombre, nombre_esp,descripcion, ERASED) VALUES
  (1,"Unknown Theme", "Tema Desconocido","", 1),
  (2,"Adult Cast", "Elenco Adulto","", 1),
  (3,"Anthropomorphic", "Antropomórfico","", 1),
  (4,"CGDCT", "CGDCT","", 1),
  (5,"Childcare", "Puericultura","", 1),
  (6,"Combat Sports", "Deportes de Combate","", 1),
  (7,"Crossdressing", "Travestismo","", 1),
  (8,"Delinquents", "Delincuentes","", 1),
  (9,"Detective", "Cetective","En este tipo de anime su temática gira en torno a una historia policiaca,", 1),
  (10,"Educational", "Educativo","", 1),
  (11,"Gag Humor", "Gag Humor","", 1),
  (12,"Gore", "Sangriento","Esta temática se encuentra llena de violencia extrema, torturas, muertes, mucha sangre y hasta desmembramientos.", 1),
  (13,"Harem", "harem","En estos animes el protagonista es un hombre el cual está rodeado de mujeres hermosas y todas van tras él o buscan su amor.", 1),
  (14,"High Stakes Game", "Apuestas Altas","", 1),
  (15,"Historical", "Historico","", 1),
  (16,"Idols (Male)", "Idolos (Hombres)","", 1),
  (17,"Idols (Female)", "Ídolos (Mujeres)","", 1),
  (18,"Isekai", "Otro Mundo","", 1),
  (19,"Iyashikei", "Juegos Curativos","", 1),
  (20,"Love Polygon", "Amor Poligono","", 1),
  (21,"Magical Sex Shift", "Cambio de Sexo Magico","", 1),
  (22,"Mahou Shoujo", "Chicas Magicas","Este estilo de anime se diferencia porque el personaje principal cuenta con poderes mágicos o místicos", 1),
  (23,"Martial Arts", "Artes Marciales","", 1),
  (24,"Mecha", "Mecha","Su temática va centrada en robots", 1),
  (25,"Medical", "Medico","", 1),
  (26,"Military", "Militar","", 1),
  (27,"Memoir", "Memoria","", 1),
  (28,"Music", "Musica","", 1),
  (29,"Mythology", "Mitologia","", 1),
  (30,"Organized Crime", "Crimen Organizado","", 1),
  (31,"Otaku Culture", "Cultura Otaku","", 1),
  (32,"Parody", "parodia","", 1),
  (33,"Performing Arts", "Artes Escenicas","", 1),
  (34,"Pets", "Mascotas","", 1),
  (35,"Psychological", "Psicologico","En este tipo de anime y manga son de los más complicados de entender, ya que como su nombre lo dice, sus historias tienden a girar en base a lo psicológico.", 1),
  (36,"Racing", "Carreras","", 1),
  (37,"Reincarnation", "Reencarnacion","", 1),
  (38,"Reverse Harem", "Harem inverso","En estos animes la protagonista es una mujer la cual está rodeado de hombres hermosos y todos van tras ella o buscan su amor.", 1),
  (39,"Romantic Subtext", "Subtexto Romantico","", 1),
  (40,"Samurai", "Samurai","", 1),
  (41,"School", "Escuela","", 1),
  (42,"Showbiz", "El Mundo Del Espectaculo","", 1),
  (43,"Space", "Espacio","", 1),
  (44,"Strategy Game", "Juego de Estrategia","", 1),
  (45,"Super Power", "Super poderes","", 1),
  (46,"Survival", "Supervivencia","", 1),
  (47,"Team Sports", "Deportes de Equipo","", 1),
  (48,"Time Travel", "Viaje en el Tiempo","", 1),
  (49,"Vampire", "Vampiros","", 1),
  (50,"Video Game", "Videojuego","", 1),
  (51,"Visual Arts", "Artes Visuales","", 1),
  (52,"Workplace", "Lugar de trabajo","", 1);

COMMIT;

ALTER TABLE ra_animes.temas AUTO_INCREMENT=53;

COMMIT;

SELECT * FROM ra_animes.temas ORDER BY id DESC;