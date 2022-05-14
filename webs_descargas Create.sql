-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.webs_descargass
-- -----------------------------------------------------

-- DROP TABLE ra_animes.webs_descargas;

CREATE TABLE IF NOT EXISTS ra_animes.webs_descargas (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "Identificador unico de la pagina web.",
  nombre VARCHAR(50) NOT NULL COMMENT "nombre de la pagina web.",
  direccion VARCHAR(150) NOT NULL COMMENT "URL de la pagina web.",
  usada_para VARCHAR (15) NOT NULL COMMENT "Qué se descarga de esta WEB.",
  activa tinyint(1) NOT NULL DEFAULT 1 COMMENT "Indica si la pagina web sigue activa o no (1 activa/0 desactivada)",
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.",
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.",
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.",
  PRIMARY KEY (id),
  UNIQUE INDEX nombre_unique (nombre),
  UNIQUE INDEX link_direccion (direccion)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = "Registra la pagina web desde donde se realiza la desacarga del anime";

commit;

SELECT * FROM ra_animes.webs_descargas;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.webs_descargas
-- -----------------------------------------------------

INSERT INTO ra_animes.webs_descargas  (id, nombre, direccion, usada_para, erased, activa) VALUES 
  (1,"N/A", "N/A", "No aplica link",1,1),
  (2,"Unknown WEB", "Unknown LINK", "Desconocido", 1,1),
  (3, "AbsorbiendoMangas", "https://absorbiendomangas.blogspot.com/", "Manga", 1, 1),
  (4, "Anime4mega", "https://anime4mega.net/", "Animes", 1, 1),
  (5, "Anime-Esp", "https://anime-esp.com/", "Animes", 1, 1),
  (6, "AniMegaFirex", "https://www.animegafirex.com/", "Animes", 1, 1),
  (7, "AniMegaLink", "https://animegalink.xyz/", "Animes", 1, 1),
  (8, "Anime-HD", "http://ww1.anime-hd.com/", "Animes", 1, 1),
  (9, "AnimeHDL", "https://animehdl.net/", "Animes", 1, 1),
  (10, "AnimeHDmx", "https://www.animehdmx.com/", "Animes", 1, 1),
  (11, "AnimeManiaco", "https://Animemaniaco.com/", "Manga", 1, 1),
  (12, "AnimeMF", "https://www.animemf.xyz/", "Animes", 1, 1),
  (13, "APTX-Fansub", "https://apotoxinfansub.com/", "Animes", 1, 1),
  (14, "Az-Animex", "https://www.az-animex.com/", "Animes", 1, 1),
  (15, "ColitaHentai", "https://colitahentai.su/", "Animes", 1, 1),
  (16, "CrisAnime", "https://crisanimex.com/", "Animes", 1, 1),
  (17, "DaemonAnime", "https://www.daemonanime.net/", "Animes", 1, 1),
  (18, "Daemon-Hentai", "https://www.daemon-hentai.com/", "Animes", 1, 1),
  (19, "Descarga-Animex", "https://www.descarga-animex.xyz/", "Animes", 1, 1),
  (20, "DescargarAnimes", "https://descargaranimes.xyz/", "Animes", 1, 1),
  (21, "descargarMangas", "https://descargarmangas.com/", "Manga", 1, 1),
  (22, "DescargarMangasPorMega", "https://descargarmangaspormega.com/", "Manga", 1, 1),
  (23, "DkAnime", "https://jkanime.net/", "Animes", 1, 1),
  (24, "Dw-Anime", "https://dw-anime.net/", "Animes", 1, 1),
  (25, "ElColeccionistaDeNovelas", "https://elcoleccionistadenovelas.wordpress.com/", "Manga", 1, 1),
  (26, "Fukou-Da", "https://fukou-da.net/", "Manga", 1, 1),
  (27, "FullAnimeHD", "http://www.fullanimehd.com/", "Animes", 1, 1),
  (28, "Hentai-LA", "https://hentaila.com/", "Animes", 1, 1),
  (29, "HyperAnimeBurst", "http://hyperanimeburst.blogspot.com/", "Animes", 1, 1),
  (30, "ivAnime", "https://www.ivanime.com/", "Animes", 1, 1),
  (31, "Japan-PAW", "https://japan-paw.net/", "Animes", 1, 1),
  (32, "LexMangas", "https://lexmangas.com/", "Manga", 1, 1),
  (33, "MeganimeHD", "http://meganime-hd.blogspot.com/", "Animes", 1, 1),
  (34, "Miraik", "https://miraik.jimdofree.com/", "Manga", 1, 1),
  (35, "NinjinAnime", "https://ninjinanime.com/", "Animes", 1, 1),
  (36, "Nlspace", "https://nlspace.blogspot.com/", "Manga", 1, 1),
  (37, "PokemonAnimePorMega", "https://pokemonanimepormega.blogspot.com/", "Animes", 1, 1),
  (38, "RedLineSP", "http://redlinesp.org/newrlsp/", "Animes", 1, 1),
  (39, "Reic-Zero", "https://reiczero.blogspot.com/", "Animes", 1, 1),
  (40, "SHentaiEsp", "https://www.shentaiesp.asia/", "Animes", 1, 1),
  (41, "SoAnime", "https://www.soanimesitehd.com/", "Animes", 1, 1),
  (42, "Sphinxanime", "https://sphinxanime.com/", "Animes", 1, 1),
  (43, "Todo-Anime", "https://todo-anime.com/", "Animes", 1, 1),
  (44, "TraduccionTSA", "https://traducciontsa.wordpress.com/", "Manga", 1, 1),
  (45, "TuAnimeLigero", "https://tuanimeligero.net/", "Animes", 1, 1),
  (46, "Tu-AnimesxD", "https://www.tus-animesxd.net/", "Animes", 1, 1),
  (47, "TuDescarga-Anime", "https://tudescarga-anime.blogspot.com/", "Animes", 1, 1),
  (48, "TYanime", "https://tyanime.net/", "Animes", 1, 1),
  (49, "VortexAnime", "http://animevortex0.blogspot.com/", "Animes", 1, 1),
  (50, "worldproject1901", "https://worldproject1901.wixsite.com/", "Manga", 1, 1),
  (51, "YxZero", "https://yxzero.xyz/", "Animes", 1, 1);


COMMIT;

ALTER TABLE ra_animes.webs_descargas AUTO_INCREMENT=52;

COMMIT;

SELECT * FROM ra_animes.webs_descargas