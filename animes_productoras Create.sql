-- -----------------------------------------------------
-- BD ra_animes
--
-- Personal de Rene Allende
-- -----------------------------------------------------
CREATE database IF NOT EXISTS ra_animes DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
-- -----------------------------------------------------

USE ra_animes;

-- -----------------------------------------------------
-- Table ra_animes.animes_productoras
-- -----------------------------------------------------

-- DROP TABLE ra_animes.animes_productoras;

CREATE TABLE IF NOT EXISTS ra_animes.animes_productoras (
  id INT (11) UNSIGNED AUTO_INCREMENT NOT NULL COMMENT "identificador unico de la productora del anime.",
  nombre VARCHAR(45) NOT NULL COMMENT "nombre de la productora.",
  erased tinyint(1) NOT NULL DEFAULT 1 COMMENT "Mantiene el borrado logico del sistema.",
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Registra la creacion del campo.",
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Registra la ultima actualizacion del campo.",
  PRIMARY KEY (id),
  UNIQUE INDEX nombre_unique (nombre)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish2_ci
COMMENT = "Registra las productoras de animes, pueden ser mas de una por anime";

COMMIT;

SELECT * FROM ra_animes.animes_productoras;

-- -----------------------------------------------------
-- Inserta datos a Tabla ra_animes.animes_productoras
-- -----------------------------------------------------

INSERT INTO ra_animes.animes_productoras (id, nombre, ERASED) VALUES
  (1,"Unknown Producers", 1),
  (2,"1theK", 1),
  (3,"4Kids Entertainment", 1),
  (4,"5pb.", 1),
  (5,"A-1 Pictures", 1),
  (6,"ABC Animation", 1),
  (7,"Abe Shuuji Jimusho", 1),
  (8,"AC-Bu", 1),
  (9,"A-Craft", 1),
  (10,"Active", 1),
  (11,"ADK", 1),
  (12,"ADK Emotions", 1),
  (13,"Aeon Entertainment", 1),
  (14,"Age", 1),
  (15,"Age Global Networks", 1),
  (16,"Agent 21", 1),
  (17,"AG-ONE", 1),
  (18,"AHA Entertainment", 1),
  (19,"Ai Addiction", 1),
  (20,"AIC", 1),
  (21,"AIC Rights", 1),
  (22,"AIR AGENCY", 1),
  (23,"Ajia-Do", 1),
  (24,"Akabanten", 1),
  (25,"Akatsuki", 1),
  (26,"Akita Shoten", 1),
  (27,"Alchemist", 1),
  (28,"All Products", 1),
  (29,"Alpha Animation", 1),
  (30,"Alpha Group Co. Ltd.", 1),
  (31,"Alpha Pictures", 1),
  (32,"Amber Film Works", 1),
  (33,"AMG MUSIC", 1),
  (34,"Amino", 1),
  (35,"Amumo", 1),
  (36,"Amuse", 1),
  (37,"Amuse Pictures", 1),
  (38,"Angelfish", 1),
  (39,"Animac", 1),
  (40,"AniMan", 1),
  (41,"Animaruya", 1),
  (42,"animate", 1),
  (43,"animate Film", 1),
  (44,"Animatic", 1),
  (45,"Animation Do", 1),
  (46,"Animax", 1),
  (47,"Anime Antenna Iinkai", 1),
  (48,"Anime Beans", 1),
  (49,"Anime Consortium Japan", 1),
  (50,"Anime R", 1),
  (51,"Aniplex", 1),
  (52,"Annapuru", 1),
  (53,"Anon Pictures", 1),
  (54,"AOMG", 1),
  (55,"Aoni Entertainment", 1),
  (56,"APDREAM", 1),
  (57,"APPP", 1),
  (58,"AQUA ARIS", 1),
  (59,"AQUAPLUS", 1),
  (60,"Arquebuse", 1),
  (61,"Artmic", 1),
  (62,"Arts Magic", 1),
  (63,"Asahi Broadcasting", 1),
  (64,"Asahi Production", 1),
  (65,"Asatsu DK", 1),
  (66,"ASCII Media Works", 1),
  (67,"Asgard", 1),
  (68,"Ashi Production", 1),
  (69,"A-Sketch", 1),
  (70,"Asmik Ace", 1),
  (71,"Atelier Musa", 1),
  (72,"AT-X", 1),
  (73,"Aubec", 1),
  (74,"Audio Planning U", 1),
  (75,"Audio Tanaka", 1),
  (76,"Avex Entertainment", 1),
  (77,"Avex Pictures", 1),
  (78,"AYCO", 1),
  (79,"AZ Creative", 1),
  (80,"B.CMAY PICTURES", 1),
  (81,"Baku Enterprise", 1),
  (82,"Bandai", 1),
  (83,"Bandai Channel", 1),
  (84,"Bandai Namco Arts", 1),
  (85,"Bandai Namco Entertainment", 1),
  (86,"Bandai Namco Games", 1),
  (87,"Bandai Namco Live Creative", 1),
  (88,"Bandai Namco Pictures", 1),
  (89,"Bandai Namco Rights Marketing", 1),
  (90,"Bandai Spirits", 1),
  (91,"Bandai Visual", 1),
  (92,"Banpresto", 1),
  (93,"Barnum Studio", 1),
  (94,"BEAM Entertainment", 1),
  (95,"Bee Media", 1),
  (96,"Bee Train", 1),
  (97,"Beijing Enlight Pictures", 1),
  (98,"Beijing Sharaku Art", 1),
  (99,"Being", 1),
  (100,"BeSTACK", 1),
  (101,"Beyond C.", 1),
  (102,"Big Bang", 1),
  (103,"Big West", 1),
  (104,"BIGLOBE", 1),
  (105,"bilibili", 1),
  (106,"Bishop", 1),
  (107,"Bit grooove promotion", 1),
  (108,"Bit Promotion", 1),
  (109,"Bitgang", 1),
  (110,"Blade", 1),
  (111,"Blue Eyes", 1),
  (112,"BMG Japan", 1),
  (113,"BookLive", 1),
  (114,"BOOTLEG", 1),
  (115,"Bouncy", 1),
  (116,"Brave Hearts", 1),
  (117,"Broccoli", 1),
  (118,"BS Fuji", 1),
  (119,"BS NTV", 1),
  (120,"BS11", 1),
  (121,"BS-TBS", 1),
  (122,"Bulls Eye", 1),
  (123,"Bungeishunjuu", 1),
  (124,"Bushiroad", 1),
  (125,"Bushiroad Move", 1),
  (126,"Bushiroad Music", 1),
  (127,"Buzz Wave", 1),
  (128,"C2C", 1),
  (129,"CA-Cygames Anime Fund", 1),
  (130,"Calf Studio", 1),
  (131,"Capcom", 1),
  (132,"CBC Television", 1),
  (133,"CBS", 1),
  (134,"Celsys", 1),
  (135,"chara-ani.com", 1),
  (136,"CherryLips", 1),
  (137,"ChiChinoya", 1),
  (138,"Children's Playground Entertainment", 1),
  (139,"China Literature Limited", 1),
  (140,"Chippai", 1),
  (141,"Christmas Holly", 1),
  (142,"Chugai Mining", 1),
  (143,"Chukyo TV Broadcasting", 1),
  (144,"Chungeorahm Film", 1),
  (145,"Cinema Tohoku", 1),
  (146,"Cloud22", 1),
  (147,"Coamix", 1),
  (148,"COLOPL", 1),
  (149,"Comic Umenohone", 1),
  (150,"CoMix Wave Films", 1),
  (151,"Company AZA", 1),
  (152,"C-one", 1),
  (153,"Contents Seed", 1),
  (154,"Coolism Productions", 1),
  (155,"Cosmic Ray", 1),
  (156,"Cospa", 1),
  (157,"Cotton Doll", 1),
  (158,"Crown Records", 1),
  (159,"Crunchyroll SC Anime Fund", 1),
  (160,"CTW", 1),
  (161,"Culture Entertainment", 1),
  (162,"CyberAgent", 1),
  (163,"CyberConnect2", 1),
  (164,"CyberStep", 1),
  (165,"Cyclone Graphics", 1),
  (166,"D & D Pictures", 1),
  (167,"D.A.S.T.", 1),
  (168,"D.N. Dream Partners", 1),
  (169,"D3", 1),
  (170,"Daewon Media", 1),
  (171,"Daiei", 1),
  (172,"DandeLion Animation Studio", 1),
  (173,"Darts", 1),
  (174,"Datam Polystar", 1),
  (175,"Daume", 1),
  (176,"DAX Production", 1),
  (177,"Decovocal", 1),
  (178,"Delfi Sound", 1),
  (179,"DeNA", 1),
  (180,"Dentsu", 1),
  (181,"Dentsu Eigasha Tokyo", 1),
  (182,"Dentsu Tec", 1),
  (183,"Digital Frontier", 1),
  (184,"Digital Works", 1),
  (185,"Discovery", 1),
  (186,"DIVE II Entertainment", 1),
  (187,"DLE", 1),
  (188,"DMM Music", 1),
  (189,"DMM pictures", 1),
  (190,"DMM.com", 1),
  (191,"DMM.com Labo", 1),
  (192,"DMM.futureworks", 1),
  (193,"Docomo Anime Store", 1),
  (194,"DOGA Productions", 1),
  (195,"Dokidoki Factory", 1),
  (196,"Dream Creation", 1),
  (197,"Dream Force", 1),
  (198,"Dream Shift", 1),
  (199,"Drecom", 1),
  (200,"d-rights", 1),
  (201,"Duckbill Entertainment", 1),
  (202,"dugout", 1),
  (203,"Dwango", 1),
  (204,"dwarf", 1),
  (205,"Dynamic Planning", 1),
  (206,"Dynamo Pictures", 1),
  (207,"E&G Films", 1),
  (208,"Earth Star Entertainment", 1),
  (209,"eBooK Initiative Japan", 1),
  (210,"Echoes", 1),
  (211,"EDGE", 1),
  (212,"Egg Firm", 1),
  (213,"EMI", 1),
  (214,"Emon", 1),
  (215,"Enoki Films", 1),
  (216,"entama", 1),
  (217,"Enterbrain", 1),
  (218,"Eswood", 1),
  (219,"Evil Line Records", 1),
  (220,"Exa International", 1),
  (221,"Exit Tunes", 1),
  (222,"F.M.F", 1),
  (223,"Fairy Dust", 1),
  (224,"FBC", 1),
  (225,"Felicity", 1),
  (226,"feng", 1),
  (227,"Fields", 1),
  (228,"FILMONY", 1),
  (229,"Five Ways", 1),
  (230,"Flat Studio", 1),
  (231,"Flex Comix", 1),
  (232,"flying DOG", 1),
  (233,"Forecast Communications", 1),
  (234,"FOREST Hunting One", 1),
  (235,"Friendly Land", 1),
  (236,"Front Line", 1),
  (237,"Front Wing", 1),
  (238,"Frontier Works", 1),
  (239,"Fuji Creative", 1),
  (240,"Fuji TV", 1),
  (241,"Fujiko F. Fujio Pro", 1),
  (242,"Fujimi Shobo", 1),
  (243,"Fujipacific Music", 1),
  (244,"Fukuoka Broadcasting System", 1),
  (245,"FuRyu", 1),
  (246,"Futabasha", 1),
  (247,"FUTURE LEAP", 1),
  (248,"GAGA", 1),
  (249,"Gakken", 1),
  (250,"Gallop", 1),
  (251,"Gamegate", 1),
  (252,"GANSIS", 1),
  (253,"GDH", 1),
  (254,"Geidai Animation", 1),
  (255,"Geijutsu Eigasha", 1),
  (256,"Genco", 1),
  (257,"Gendai Production", 1),
  (258,"Gen'ei", 1),
  (259,"Geneon Universal Entertainment", 1),
  (260,"Glams", 1),
  (261,"Glovision", 1),
  (262,"GoGo Visual Planning", 1),
  (263,"Good Smile Company", 1),
  (264,"Good Smile Film", 1),
  (265,"Graduate School of Film Producing", 1),
  (266,"Graphinica", 1),
  (267,"GREE", 1),
  (268,"Green Bunny", 1),
  (269,"Greenwood", 1),
  (270,"Grooove", 1),
  (271,"Group TAC", 1),
  (272,"Grouper Productions", 1),
  (273,"GYAO!", 1),
  (274,"Hakuhodo", 1),
  (275,"Hakuhodo DY Media Partners", 1),
  (276,"Hakuhodo DY Music & Pictures", 1),
  (277,"Hakusensha", 1),
  (278,"Hal Film Maker", 1),
  (279,"Half H.P Studio", 1),
  (280,"Haoliners Animation League", 1),
  (281,"Happinet", 1),
  (282,"Happinet Pictures", 1),
  (283,"Happy Elements", 1),
  (284,"Harmony Gold", 1),
  (285,"Hasbro", 1),
  (286,"Heewon Entertainment", 1),
  (287,"Hexagon Pictures", 1),
  (288,"Hipland Music Corporation", 1),
  (289,"Hiroshima Television", 1),
  (290,"Hobby Japan", 1),
  (291,"Hobibox", 1),
  (292,"Hochi Shimbun", 1),
  (293,"Hoods Entertainment", 1),
  (294,"Horgos Coloroom Pictures Co.", 1),
  (295,"HoriPro", 1),
  (296,"HoriPro International", 1),
  (297,"Hoso Seisaku Doga", 1),
  (298,"Hot Bear", 1),
  (299,"HOTZIPANG", 1),
  (300,"Houbunsha", 1),
  (301,"I was a Ballerina", 1),
  (302,"I Will", 1),
  (303,"i0+", 1),
  (304,"Ichijinsha", 1),
  (305,"Idea Factory", 1),
  (306,"Illumitoon Entertainment", 1),
  (307,"Image House", 1),
  (308,"Imagica", 1),
  (309,"ImaginAsian Entertainment", 1),
  (310,"Imagine", 1),
  (311,"Inc.", 1),
  (312,"Index", 1),
  (313,"Infinite", 1),
  (314,"Innocent Grey", 1),
  (315,"International Digital Artist", 1),
  (316,"iQIYI", 1),
  (317,"Ishimori Pro", 1),
  (318,"Jade Animation", 1),
  (319,"Jam", 1),
  (320,"Japan Home Video", 1),
  (321,"Japan Volleyball Association", 1),
  (322,"JapanAnime", 1),
  (323,"Jinnan Studio", 1),
  (324,"Jinnis Animation Studios", 1),
  (325,"JM Animation", 1),
  (326,"JR East Marketing & Communications", 1),
  (327,"Jumondo", 1),
  (328,"Just Production", 1),
  (329,"JY Animation", 1),
  (330,"Kadokawa", 1),
  (331,"Kadokawa Contents Gate", 1),
  (332,"Kadokawa Haruki Corporation", 1),
  (333,"Kadokawa Media (Taiwan)", 1),
  (334,"Kadokawa Media House", 1),
  (335,"Kadokawa Pictures Japan", 1),
  (336,"Kadokawa Shoten", 1),
  (337,"Kakao Japan", 1),
  (338,"Kamio Japan", 1),
  (339,"Kamitsubaki Studio", 1),
  (340,"Kanetsu Investment", 1),
  (341,"Kanon Sound", 1),
  (342,"Kansai Telecasting", 1),
  (343,"Kawade Shobo Shinsha", 1),
  (344,"KBS", 1),
  (345,"KDDI", 1),
  (346,"KENMedia", 1),
  (347,"Khara", 1),
  (348,"Kids Station", 1),
  (349,"King Records", 1),
  (350,"Kino Production", 1),
  (351,"Kinoshita Group Holdings", 1),
  (352,"Kinoshita Koumuten", 1),
  (353,"Kinoshita Management", 1),
  (354,"Kitty Films", 1),
  (355,"KJJ Animation", 1),
  (356,"KLab", 1),
  (357,"KlockWorx", 1),
  (358,"Knack Productions", 1),
  (359,"Kodansha", 1),
  (360,"Koei Tecmo Games", 1),
  (361,"Kojiro Shishido Animation Works", 1),
  (362,"Kokusai Eigasha", 1),
  (363,"Konami", 1),
  (364,"KOO-KI", 1),
  (365,"KSS", 1),
  (366,"Kuri Jikken Manga Kobo", 1),
  (367,"Kyodo Eiga", 1),
  (368,"Kyoraku Industrial Holdings", 1),
  (369,"Kyoto Animation", 1),
  (370,"Kyotoma", 1),
  (371,"Langmaor", 1),
  (372,"Lantis", 1),
  (373,"Lawson", 1),
  (374,"Lawson HMV Entertainment", 1),
  (375,"Legs", 1),
  (376,"Lemon Heart", 1),
  (377,"Liber Entertainment", 1),
  (378,"Libre", 1),
  (379,"LIDENFILMS", 1),
  (380,"Life Work", 1),
  (381,"LINE Corporation", 1),
  (382,"Liverpool", 1),
  (383,"Ltd.", 1),
  (384,"Lucent Pictures Entertainment", 1),
  (385,"Lune Pictures", 1),
  (386,"Lute", 1),
  (387,"Lyrics", 1),
  (388,"m.o.e.", 1),
  (389,"Madhouse", 1),
  (390,"Mag Garden", 1),
  (391,"MAGES.", 1),
  (392,"Magic Bus", 1),
  (393,"Magic Capsule", 1),
  (394,"Magic Lantern Film", 1),
  (395,"MAGNET", 1),
  (396,"Mainichi Broadcasting System", 1),
  (397,"Mainichi Shimbun", 1),
  (398,"Manga Productions", 1),
  (399,"Marubeni", 1),
  (400,"Marui Group", 1),
  (401,"Marvelous", 1),
  (402,"Marvelous AQL", 1),
  (403,"Mary Jane", 1),
  (404,"MB planning", 1),
  (405,"Media Castle", 1),
  (406,"Media Factory", 1),
  (407,"Media Rings", 1),
  (408,"Mediabank", 1),
  (409,"MediaNet", 1),
  (410,"Medicos Entertainment", 1),
  (411,"Medicrie", 1),
  (412,"Memory-Tech", 1),
  (413,"Midorimatsu", 1),
  (414,"MiHoYoAnime", 1),
  (415,"Milkshake", 1),
  (416,"Milky Animation Label", 1),
  (417,"Milky Cartoon", 1),
  (418,"Mill Creek Entertainment", 1),
  (419,"Minami Machi Bugyousho", 1),
  (420,"Miracle Bus", 1),
  (421,"Mirai Film", 1),
  (422,"Mirai Records", 1),
  (423,"Miyagi Television Broadcasting", 1),
  (424,"MMDGP", 1),
  (425,"Mobcast", 1),
  (426,"Monomusik", 1),
  (427,"Motion Magic", 1),
  (428,"Movic", 1),
  (429,"MS Pictures", 1),
  (430,"Muse Communication", 1),
  (431,"Muse International", 1),
  (432,"Mushi Production", 1),
  (433,"My Theater D.D.", 1),
  (434,"Myrica Music", 1),
  (435,"Nagoya Broadcasting Network", 1),
  (436,"Nakamura Production", 1),
  (437,"Namisokan", 1),
  (438,"Natural High", 1),
  (439,"NAZ", 1),
  (440,"NBCUniversal Entertainment Japan", 1),
  (441,"NEC Avenue", 1),
  (442,"Nelvana", 1),
  (443,"Netflix", 1),
  (444,"Network", 1),
  (445,"NewGin", 1),
  (446,"NHK", 1),
  (447,"NHK Enterprises", 1),
  (448,"Nice Boat Animation", 1),
  (449,"Nichiei Agency", 1),
  (450,"NichiNare", 1),
  (451,"Nichion", 1),
  (452,"Nihon Ad Systems", 1),
  (453,"Nihon Falcom", 1),
  (454,"Nihon Hoso Eigasha", 1),
  (455,"Nihon Keizai Koukokusha", 1),
  (456,"Nikkatsu", 1),
  (457,"Nintendo", 1),
  (458,"Nippon Animation", 1),
  (459,"Nippon Columbia", 1),
  (460,"Nippon Television Music", 1),
  (461,"Nippon Television Network", 1),
  (462,"Nitroplus", 1),
  (463,"Nobel", 1),
  (464,"North Stars Pictures", 1),
  (465,"Notes", 1),
  (466,"NTT Docomo", 1),
  (467,"NTT Plala", 1),
  (468,"NuTech Digital", 1),
  (469,"OB Planning", 1),
  (470,"Obtain Future", 1),
  (471,"OCC", 1),
  (472,"Olive Studio", 1),
  (473,"OLM", 1),
  (474,"Omnibus Japan", 1),
  (475,"On The Run", 1),
  (476,"On-Lead", 1),
  (477,"Opera House", 1),
  (478,"Orange", 1),
  (479,"Orix", 1),
  (480,"Otogi Production", 1),
  (481,"Overlap", 1),
  (482,"P Productions", 1),
  (483,"P.I.C.S.", 1),
  (484,"Panasonic Digital Contents", 1),
  (485,"Panda Factory", 1),
  (486,"Pashmina", 1),
  (487,"Pazzy Entertainment", 1),
  (488,"pH Studio", 1),
  (489,"Pia", 1),
  (490,"Picante Circus", 1),
  (491,"Pink Pineapple", 1),
  (492,"Pioneer LDC", 1),
  (493,"Pixy", 1),
  (494,"Polygon Magic", 1),
  (495,"Polygon Pictures", 1),
  (496,"Polygram Japan", 1),
  (497,"Poncotan", 1),
  (498,"Pony Canyon", 1),
  (499,"Pony Canyon Enterprise", 1),
  (500,"Postgal Workshop", 1),
  (501,"PRA", 1),
  (502,"Presidio", 1),
  (503,"Production Ace", 1),
  (504,"Production I.G", 1),
  (505,"Project Team Eikyuu Kikan", 1),
  (506,"Public & Basic", 1),
  (507,"Q-Tec", 1),
  (508,"Queen Bee", 1),
  (509,"Rabbit Gate", 1),
  (510,"Radix", 1),
  (511,"Raku High Student Council", 1),
  (512,"Rakuonsha", 1),
  (513,"Rakuten", 1),
  (514,"RAY", 1),
  (515,"Rialto Entertainment", 1),
  (516,"RightTracks", 1),
  (517,"Robot Communications", 1),
  (518,"Rondo Robe", 1),
  (519,"RX-RECORDS", 1),
  (520,"Ryukyu Asahi Broadcasting", 1),
  (521,"Sakura Create", 1),
  (522,"Sakura Production", 1),
  (523,"Sammy", 1),
  (524,"Samsung", 1),
  (525,"Sanctuary", 1),
  (526,"Sanrio", 1),
  (527,"San-X", 1),
  (528,"Sanyo", 1),
  (529,"Sanyo Bussan", 1),
  (530,"Sapporo Television Broadcasting", 1),
  (531,"SB Creative", 1),
  (532,"SEDIC International", 1),
  (533,"Sega", 1),
  (534,"SEK Studios", 1),
  (535,"Sentai Filmworks", 1),
  (536,"Seven", 1),
  (537,"Seven Stone Entertainment", 1),
  (538,"Shaft", 1),
  (539,"Shanghai Animation Film Studio", 1),
  (540,"Sharefun Studio", 1),
  (541,"Shelty", 1),
  (542,"Shimogumi", 1),
  (543,"Shinano Kikaku", 1),
  (544,"Shin-Ei Animation", 1),
  (545,"Shinshokan", 1),
  (546,"Shinwon Productions", 1),
  (547,"Shinyusha", 1),
  (548,"Shizuoka Asahi Television", 1),
  (549,"Shizuoka Daiichi Television", 1),
  (550,"Shochiku", 1),
  (551,"Shochiku Media Division", 1),
  (552,"Shochiku Music Publishing", 1),
  (553,"Shogakukan", 1),
  (554,"Shogakukan Music & Digital Entertainment", 1),
  (555,"Shogakukan-Shueisha Productions", 1),
  (556,"Shounen Gahousha", 1),
  (557,"Showgate", 1),
  (558,"Showten", 1),
  (559,"Shueisha", 1),
  (560,"Silky’s", 1),
  (561,"Skouras", 1),
  (562,"SKY Perfect Well Think", 1),
  (563,"Slow Curve", 1),
  (564,"SME Records", 1),
  (565,"Smiral Animation", 1),
  (566,"Soeishinsha", 1),
  (567,"Soft Garage", 1),
  (568,"Soft on Demand", 1),
  (569,"SoftBank Creative", 1),
  (570,"SoftX", 1),
  (571,"Sogo Vision", 1),
  (572,"Sonilude", 1),
  (573,"Sony Creative Products", 1),
  (574,"Sony Interactive Entertainment", 1),
  (575,"Sony Music Communications", 1),
  (576,"Sony Music Entertainment", 1),
  (577,"Sony PCL", 1),
  (578,"Sony Pictures Entertainment", 1),
  (579,"Sotsu", 1),
  (580,"Sotsu Music Publishing", 1),
  (581,"Sound Team Don Juan", 1),
  (582,"Sovat Theater", 1),
  (583,"Soyuzmultfilm", 1),
  (584,"Space Neko Company", 1),
  (585,"Space Shower Music", 1),
  (586,"Spacey Music Entertainment", 1),
  (587,"SPO Entertainment", 1),
  (588,"Square Enix", 1),
  (589,"S-TAR7", 1),
  (590,"Starchild Records", 1),
  (591,"Starry Cube", 1),
  (592,"Stella Promotion", 1),
  (593,"Stray Cats", 1),
  (594,"Studio A-CAT", 1),
  (595,"Studio AWAKE", 1),
  (596,"Studio Binzo", 1),
  (597,"Studio Cab", 1),
  (598,"Studio Carbuncle", 1),
  (599,"Studio CHANT", 1),
  (600,"Studio Comet", 1),
  (601,"Studio Compile", 1),
  (602,"Studio Core", 1),
  (603,"Studio Curtain", 1),
  (604,"Studio Dadashow", 1),
  (605,"Studio Deva Loka", 1),
  (606,"Studio Fantasia", 1),
  (607,"Studio Hibari", 1),
  (608,"Studio Izena", 1),
  (609,"Studio Jack", 1),
  (610,"Studio Junio", 1),
  (611,"Studio Kaab", 1),
  (612,"Studio Kelmadick", 1),
  (613,"Studio Kikan", 1),
  (614,"Studio Matrix", 1),
  (615,"Studio Mausu", 1),
  (616,"Studio Mir", 1),
  (617,"Studio Mirai", 1),
  (618,"Studio Moriken", 1),
  (619,"Studio Nem", 1),
  (620,"Studio NOIX", 1),
  (621,"Studio Nue", 1),
  (622,"Studio Pierrot", 1),
  (623,"Studio PuYUKAI", 1),
  (624,"Studio Saki Makura", 1),
  (625,"Studio Shamrock", 1),
  (626,"Studio Take Off", 1),
  (627,"Studio Tron", 1),
  (628,"Studio Tulip", 1),
  (629,"Studio Unicorn", 1),
  (630,"Studio Wombat", 1),
  (631,"Studio Zain", 1),
  (632,"StudioRF Inc.", 1),
  (633,"Suiseisha", 1),
  (634,"Sumitomo", 1),
  (635,"Sun TV", 1),
  (636,"Sunny Side Up", 1),
  (637,"Sunrise", 1),
  (638,"Sunrise Music Publishing", 1),
  (639,"Sunwoo Entertainment", 1),
  (640,"SUPA LOVE", 1),
  (641,"T.O Entertainment", 1),
  (642,"Takara", 1),
  (643,"Takara Tomy A.R.T.S", 1),
  (644,"Takeshobo", 1),
  (645,"Takun Manga Box", 1),
  (646,"Tama Production", 1),
  (647,"tamakoshi", 1),
  (648,"Tamura Shigeru Studio", 1),
  (649,"Tavac", 1),
  (650,"TBS", 1),
  (651,"TC Entertainment", 1),
  (652,"TCJ", 1),
  (653,"Techno Sound", 1),
  (654,"Teichiku Entertainment", 1),
  (655,"Tele-Cartoon Japan", 1),
  (656,"Telecom Animation Film", 1),
  (657,"Tencent Animation & Comics", 1),
  (658,"Tencent Games", 1),
  (659,"Tencent Japan", 1),
  (660,"Tencent Penguin Pictures", 1),
  (661,"Terada Mokei", 1),
  (662,"Tezuka Productions", 1),
  (663,"The Answer Studio", 1),
  (664,"The Village of Marchen", 1),
  (665,"Think Corporation", 1),
  (666,"TIS", 1),
  (667,"TMS Entertainment", 1),
  (668,"TMS Music", 1),
  (669,"TMS-Kyokuchi", 1),
  (670,"Tochigi TV", 1),
  (671,"Toei Agency", 1),
  (672,"Toei Animation", 1),
  (673,"Toei Video", 1),
  (674,"Tohan Corporation", 1),
  (675,"Toho", 1),
  (676,"TOHO animation", 1),
  (677,"Toho Music", 1),
  (678,"Tohokushinsha Film Corporation", 1),
  (679,"Tokuma Japan", 1),
  (680,"Tokuma Japan Communications", 1),
  (681,"Tokuma Shoten", 1),
  (682,"Tokyo FM Broadcasting", 1),
  (683,"Tokyo Kids", 1),
  (684,"Tokyo Movie Shinsha", 1),
  (685,"Tokyo MX", 1),
  (686,"Top Marshal", 1),
  (687,"Top-Insight International", 1),
  (688,"Toranoana", 1),
  (689,"Tose", 1),
  (690,"Toshiba Digital Frontiers", 1),
  (691,"Toshiba EMI", 1),
  (692,"Toshiba Entertainment", 1),
  (693,"Toy's Factory", 1),
  (694,"Trans Arts", 1),
  (695,"Triangle Staff", 1),
  (696,"Trinity Sound", 1),
  (697,"Tsubasa Entertainment", 1),
  (698,"Tsuchida Productions", 1),
  (699,"Tsukuru no Mori", 1),
  (700,"TV Asahi", 1),
  (701,"TV Asahi Music", 1),
  (702,"TV Osaka", 1),
  (703,"TV Tokyo", 1),
  (704,"TV Tokyo Music", 1),
  (705,"Twin Engine", 1),
  (706,"TYO", 1),
  (707,"TYO Animations", 1),
  (708,"U/M/A/A Inc.", 1),
  (709,"UK.PROJECT INC.", 1),
  (710,"Ultra Super Pictures", 1),
  (711,"U-NEXT", 1),
  (712,"Universal Entertainment", 1),
  (713,"Universal Music Japan", 1),
  (714,"Universal Studios", 1),
  (715,"USEN", 1),
  (716,"VAP", 1),
  (717,"Vega Entertainment", 1),
  (718,"Victor Entertainment", 1),
  (719,"Victor Studio", 1),
  (720,"Video Market", 1),
  (721,"Virgin Babylon Records", 1),
  (722,"Visual 80", 1),
  (723,"Visual Arts", 1),
  (724,"Wako Productions", 1),
  (725,"Walt Disney Studios", 1),
  (726,"Warner Bros. Japan", 1),
  (727,"Warner Bros. Pictures", 1),
  (728,"Warner Music Japan", 1),
  (729,"Watermark", 1),
  (730,"White Bear", 1),
  (731,"White Fox", 1),
  (732,"Wolf Smoke Studio", 1),
  (733,"Wolfsbane", 1),
  (734,"Wonder Kids", 1),
  (735,"WOWOW", 1),
  (736,"W-Toon Studio", 1),
  (737,"Yahoo! Japan", 1),
  (738,"Yamamura Animation", 1),
  (739,"Yamasa", 1),
  (740,"Yamato Works", 1),
  (741,"Yaoqi", 1),
  (742,"Yellow Film", 1),
  (743,"Yokohama Animation Lab", 1),
  (744,"Yomiko Advertising", 1),
  (745,"Yomiuri Advertising", 1),
  (746,"Yomiuri Shimbun", 1),
  (747,"Yomiuri Telecasting", 1),
  (748,"Yomiuri TV Enterprise", 1),
  (749,"Yostar Pictures", 1),
  (750,"Youmex", 1),
  (751,"YTV", 1),
  (752,"YUKE'S", 1),
  (753,"Yumeta Company", 1),
  (754,"Zack Promotion", 1),
  (755,"Zelico Film", 1),
  (756,"Zero-G Room", 1),
  (757,"ZIZ Entertainment (ZIZ)", 1),
  (758,"ZOOM ENTERPRISE", 1);

COMMIT;

ALTER TABLE ra_animes.animes_productoras AUTO_INCREMENT=759;

COMMIT;

SELECT * FROM ra_animes.animes_productoras order by id desc;
