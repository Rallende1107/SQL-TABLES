-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.animes_licenciadoras
-- -----------------------------------------------------

-- DROP TABLE ra_animes.animes_licenciadoras;

CREATE TABLE IF NOT EXISTS ra_animes.animes_licenciadoras (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "identificador unico de la licenciadora.",
  nombre VARCHAR(45) NOT NULL COMMENT "nombre de la licenciadora.",
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.",
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.",
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.",
  PRIMARY KEY (id),
  UNIQUE INDEX nombre_unique (nombre)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = "Registra la licenciadora del anime, pueden ser mas de una por anime";

COMMIT;

SELECT * FROM ra_animes.animes_licenciadoras;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.animes_licenciadoras
-- -----------------------------------------------------

INSERT INTO ra_animes.animes_licenciadoras (id, nombre, ERASED) VALUES
  (1,"Unknown Licensors", 1),
  (2,"Adult Source Media", 1),
  (3,"ADV Films", 1),
  (4,"Anime Midstream", 1),
  (5,"AnimEigo", 1),
  (6,"Aniplex of America", 1),
  (7,"Bandai", 1),
  (8,"Bandai Entertainment", 1),
  (9,"bilibili", 1),
  (10,"Central Park Media", 1),
  (11,"Critical Mass Video", 1),
  (12,"Crunchyroll", 1),
  (13,"Dentsu Entertainment USA", 1),
  (14,"DiC Entertainment", 1),
  (15,"Discotek Media", 1),
  (16,"Eleven Arts", 1),
  (17,"Enoki Films", 1),
  (18,"Flatiron Film Company", 1),
  (19,"Funimation", 1),
  (20,"Geneon Entertainment USA", 1),
  (21,"GKIDS", 1),
  (22,"Hasbro", 1),
  (23,"Inc.", 1),
  (24,"JapanAnime", 1),
  (25,"Ketchup Entertainment", 1),
  (26,"Kitty Media", 1),
  (27,"Maiden Japan", 1),
  (28,"Manga Entertainment", 1),
  (29,"Marvel Entertainment", 1),
  (30,"Media Blasters", 1),
  (31,"Nelvana", 1),
  (32,"Netflix", 1),
  (33,"NIS America", 1),
  (34,"NIS America Inc.", 1),
  (35,"Nozomi Entertainment", 1),
  (36,"NuTech Digital", 1),
  (37,"NYAV Post", 1),
  (38,"Ponycan USA", 1),
  (39,"Saban Brands", 1),
  (40,"Saban Entertainment", 1),
  (41,"Sentai Filmworks", 1),
  (42,"Shout! Factory", 1),
  (43,"SoftCel Pictures", 1),
  (44,"Sony Pictures Entertainment", 1),
  (45,"Synch-Point", 1),
  (46,"Tokyopop", 1),
  (47,"Urban Vision", 1),
  (48,"VIZ Media", 1),
  (49,"Warner Bros. Japan", 1),
  (50,"Warner Bros. Pictures", 1);

COMMIT;

ALTER TABLE ra_animes.animes_licenciadoras AUTO_INCREMENT=51;

COMMIT;

SELECT * FROM ra_animes.animes_licenciadoras order by id desc;