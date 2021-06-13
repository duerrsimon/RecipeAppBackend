# --- WireDatabaseBackup {"time":"2021-06-09 08:48:28","user":"","dbName":"acp-recipe","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_abbreviation`;
CREATE TABLE `field_abbreviation` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1020` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1020` (`data1020`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1028', 'kg', 'kg');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1029', 'handfuls', 'poignées');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1030', 'tsp', 'cuil. à café');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1056', 'g', '');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1057', 'pce', '');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1080', 'cuil. a soupe', 'tbsp');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1085', 'clove', '');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1130', 'ml', 'ml');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1142', 'block', 'bloc');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1160', 'pinch', 'prise');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1177', 'thumb-length', 'longueur du pouce');
INSERT INTO `field_abbreviation` (`pages_id`, `data`, `data1020`) VALUES('1179', 'cm', 'cm');

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_category`;
CREATE TABLE `field_category` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_category` (`pages_id`, `data`, `sort`) VALUES('1024', '1033', '0');
INSERT INTO `field_category` (`pages_id`, `data`, `sort`) VALUES('1118', '1033', '0');
INSERT INTO `field_category` (`pages_id`, `data`, `sort`) VALUES('1024', '1058', '1');
INSERT INTO `field_category` (`pages_id`, `data`, `sort`) VALUES('1071', '1077', '0');
INSERT INTO `field_category` (`pages_id`, `data`, `sort`) VALUES('1161', '1077', '0');
INSERT INTO `field_category` (`pages_id`, `data`, `sort`) VALUES('1071', '1078', '1');
INSERT INTO `field_category` (`pages_id`, `data`, `sort`) VALUES('1161', '1078', '1');

DROP TABLE IF EXISTS `field_creator`;
CREATE TABLE `field_creator` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_creator` (`pages_id`, `data`) VALUES('1118', 'Simon Duerr');
INSERT INTO `field_creator` (`pages_id`, `data`) VALUES('1071', 'Simon Duerr');
INSERT INTO `field_creator` (`pages_id`, `data`) VALUES('1024', 'Mule');
INSERT INTO `field_creator` (`pages_id`, `data`) VALUES('1161', 'Simon Duerr');

DROP TABLE IF EXISTS `field_creator_url`;
CREATE TABLE `field_creator_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_defaultpersons`;
CREATE TABLE `field_defaultpersons` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_defaultpersons` (`pages_id`, `data`) VALUES('1118', '4');
INSERT INTO `field_defaultpersons` (`pages_id`, `data`) VALUES('1071', '4');
INSERT INTO `field_defaultpersons` (`pages_id`, `data`) VALUES('1024', '4');
INSERT INTO `field_defaultpersons` (`pages_id`, `data`) VALUES('1161', '1');

DROP TABLE IF EXISTS `field_desc`;
CREATE TABLE `field_desc` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1020` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1038', 'Peel and chop the onion. Peel the potatoes and turnips and cut them into large cubes.', 'Pelez et hachez l’oignon. Pelez les pommes de terre et les navets, taillez-les en gros dés.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1039', 'Bring a large volume of salted water to a boil and place the potatoes and turnips in it. Let cook for 15 minutes, then drain.', 'Portez un grand volume d’eau salée à ébullition et placez-y les pommes de terres et les navets. Laissez-cuire 15 min puis égouttez');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1040', 'Remove the tails from the spinach leaves by pulling on them.', 'Eliminez les queues des feuilles d’épinards en tirant dessus.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1041', 'Heat the butter in a large frying pan. When it is foamy, add the chopped onion. Let it brown for 5 to 10 minutes, it should be golden brown.', 'Faites chauffer le beurre dans une grande sauteuse. Lorsqu’il est mousseux, placez-y l’oignon haché. Laissez-le dorer pendant 5 à 10 min, il doit être bien blond.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1042', 'Add the diced potatoes and turnips. Mix and cook for about 5 minutes. Add the spinach leaves all at once and cover for 2 minutes. Remove the lid and stir carefully until all the spinach has \"fallen off\".', 'Ajoutez les dés de pommes de terre et de navets. Mélangez et laissez cuire 5 min environ. Ajoutez alors les feuilles d’épinards d’un coup et couvrez 2 min. Retirez alors le couvercle et mélangez soigneusement, jusqu’à ce que tous les épinards soient « tombés ».');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1043', 'Season with salt and pepper, add ground paprika (optional) and mix well. Serve hot.', 'Salez, poivrez, incorporez le paprika moulu (facultatif) et mélangez bien. Servez bien chaud.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1096', 'Heat niter kibbeh in a pan over medium high heat.  Add the onion and cook until soft and translucent, 5-7 minutes.', 'Faire chauffer le niter kibbeh dans une poêle à feu moyen-élevé.  Ajouter l\'oignon et faire cuire jusqu\'à ce qu\'il soit tendre et translucide, 5 à 7 minutes.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1097', 'Add the garlic, ginger and spices and cook for 2-3 minutes.  Add the collard greens and another tablespoon of niter kibbeh and cook until the collards turn bright green and are wilted but still a slightly crispy, 5-7 minutes.  Add more spices and/or niter kibbeh to taste.', 'Ajouter l\'ail, le gingembre et les épices et faire cuire pendant 2 à 3 minutes.  Ajouter les feuilles de chou vert et une autre cuillère à soupe de niter kibbeh et faire cuire jusqu\'à ce que les feuilles de chou vert deviennent vert vif et soient flétries mais encore légèrement croustillantes, 5-7 minutes.  Ajouter plus d\'épices et/ou de niter kibbeh au goût.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1146', 'Mix flour with dry yeast, salt and sugar. Add water and incorporate to form a nice and soft dough ball. Near the end add the oil and knead until the softness of the dough resembles an ear-lobe. Let the dough rise covered in a warm spot for 1.30 h.', 'Mélanger la farine avec la levure sèche, le sel et le sucre. Ajoutez l\'eau et incorporez-la pour former une belle boule de pâte souple. Vers la fin, ajoutez l\'huile et pétrissez jusqu\'à ce que la pâte ressemble à un lobe d\'oreille. Laissez la pâte lever couverte dans un endroit chaud pendant 1,30 h.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1149', 'Prepare the filling by first finely dicing the white part of the spring onion and the garlic. Rinse and dry the spinach. \n\nHeat some oil in the pan and add the spring onion and the garlic and fry for few minutes. Add the spinach and continue to cook until it is wilted. Remove from the heat and add salt and pepper. \n\nCoarsely chop the tomato (e.g halfs or quarters) and mix with the spinach - onions, the grated gruyere, crumbled feta and paprika.', 'Préparez la farce en coupant d\'abord en petits morceaux la partie blanche de l\'oignon de printemps et l\'ail. Rincez et séchez les épinards.\n\nFaites chauffer un peu d\'huile dans une poêle et ajoutez l\'oignon  et l\'ail et faites-les frire pendant quelques minutes. Ajouter les épinards et poursuivre la cuisson jusqu\'à ce qu\'ils soient flétris. Retirer du feu et ajouter le sel et le poivre.\n\n<p>Hacher grossièrement la tomate (par exemple, en deux ou en quatre) et la mélanger avec les épinards, les oignons, le gruyère râpé, la feta émiettée et le paprika.</p>');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1151', 'On a floured surface knead the dough for a short time and make 4 pieces. Form dough balls and let the rise again for 10 minutes.', 'Sur une surface farinée, pétrissez la pâte pendant un court moment et faites 4 morceaux. Formez des boules de pâte et laissez-les lever à nouveau pendant 10 minutes.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1152', 'Preheat the oven to 220 C.\n\nUse a rolling pin to flatten the dough balls to about 30 x 15 cm. Spread the filling leaving about 1.5 to 2 cm space to the edges. Fold the uncovered dough in and give it an eggwash and optionally add some sesame seeds.\n\n<p>Bake on a baking tray for about 12 minutes in the lower part of the oven.</p>', 'Préchauffez le four à 220 C\n\nUtilisez un rouleau à pâtisserie pour aplatir les boules de pâte à environ 30 x 15 cm. Étalez la garniture en laissant un espace d\'environ 1,5 à 2 cm sur les bords. Repliez la pâte non recouverte, passez-la à l\'œuf et ajoutez éventuellement quelques graines de sésame.\n\n<p>Faites cuire sur une plaque à pâtisserie pendant environ 12 minutes dans la partie inférieure du four.</p>');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1188', 'Heat a small stockpot to medium heat and add all the dry whole spices and heat them until the scent becomes intense. Do do not let them burn as this will produce bitterness.', 'Chauffer une petite marmite à feu moyen et ajouter toutes les épices entières sèches et les faire chauffer jusqu\'à ce que le parfum devienne intense. Ne les laissez pas brûler car cela produirait de l\'amertume.');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1189', 'Add the rest of the ingredients and reduce the heat to very low. The butter should slowly simmer and a foam will form at the top. \nTake care not to burn the butter and stir occasionally. Simmer for about an hour to 1.5 hours and take off the foam using a spoon.', 'Ajoutez le reste des ingrédients et réduisez le feu à un niveau très bas. Le beurre devrait mijoter lentement et une mousse se former sur le dessus. Veillez à ne pas brûler le beurre et remuez de temps en temps. Laissez mijoter pendant environ une heure à une heure et demie et retirez la mousse à l\'aide d\'une cuillère');
INSERT INTO `field_desc` (`pages_id`, `data`, `data1020`) VALUES('1190', 'Take a sieve and filter the hot butter through the sieve into a jar with a lid. \nLet cool with a lid on. \n\nThe niter kibbeh will last for several weeks on the counter and for a few months in the fridge.', 'Prenez un tamis et filtrez le beurre chaud à travers le tamis dans un bocal avec un couvercle. Laissez refroidir avec le couvercle. Le niter kibbeh se conserve plusieurs semaines sur le comptoir et quelques mois au réfrigérateur.');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_hint`;
CREATE TABLE `field_hint` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1020` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1020` (`data1020`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hint` (`pages_id`, `data`, `data1020`) VALUES('1185', '', '');
INSERT INTO `field_hint` (`pages_id`, `data`, `data1020`) VALUES('1186', '', '');
INSERT INTO `field_hint` (`pages_id`, `data`, `data1020`) VALUES('1187', '', '');
INSERT INTO `field_hint` (`pages_id`, `data`, `data1020`) VALUES('1172', 'Available in Asia store (e.g Fleur d\'asie Renens Gare)', 'Disponible dans le magasin Asia (par exemple Fleur d\'asie Renens Gare)');
INSERT INTO `field_hint` (`pages_id`, `data`, `data1020`) VALUES('1161', 'A spicy ethiopian cooking butter that can be used for ethiopian cuisine and indian cuisine.', 'Un beurre de cuisson éthiopien épicé qui peut être utilisé pour la cuisine éthiopienne et la cuisine indienne.');
INSERT INTO `field_hint` (`pages_id`, `data`, `data1020`) VALUES('1076', 'Replace with ghee or butter. Add extra spices turmeric, fenugreek seeds, coriander, cumin seeds.', 'Remplacer par du ghee ou du beurre. Ajouter des épices supplémentaires : curcuma, graines de fenugrec, coriandre, graines de cumin');

DROP TABLE IF EXISTS `field_image`;
CREATE TABLE `field_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1071', '3891062378_2b137a4582_b.jpg', '0', '[\"\"]', '2021-06-05 15:04:45', '2021-06-05 15:04:45', '{\"_117\":\"CC BY NC 2.0\",\"_118\":\"Alan Dayley\",\"_119\":\"https:\\/\\/creativecommons.org\\/licenses\\/by-nc-sa\\/2.0\\/\"}', '88643', '41', '41', '672', '480', '1.40');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1118', 'img_20180329_193144.jpg', '0', '[\"Pide\"]', '2021-06-05 15:20:17', '2021-06-05 15:20:17', '{\"_117\":\"CC BY SA 4.0\",\"_118\":\"Simon Duerr\",\"_119\":\"http:\\/\\/simonduerr.eu\"}', '1034137', '41', '41', '2896', '2591', '1.12');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1024', 'soup-5361342_1280.jpg', '0', '[\"\"]', '2021-06-06 13:18:29', '2021-06-06 13:18:29', '{\"_117\":\"Pixabay license\",\"_118\":\"Kev Beron\",\"_119\":\"https:\\/\\/pixabay.com\\/users\\/kevberon-1209227\\/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=5361342\"}', '177354', '41', '41', '1280', '853', '1.50');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES('1161', 'home_made_ghee.jpg', '0', '[\"Niter kibbeh\"]', '2021-06-07 07:48:35', '2021-06-07 07:48:35', '{\"_117\":\"CC BY SA\",\"_118\":\"Neha Sonal\",\"_119\":\"https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Home_made_Ghee.jpg\"}', '100181', '41', '41', '800', '600', '1.33');

DROP TABLE IF EXISTS `field_ingredient`;
CREATE TABLE `field_ingredient` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1064', '1031', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1113', '1031', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1159', '1031', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1065', '1050', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1111', '1050', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1066', '1051', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1067', '1052', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1069', '1053', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1166', '1053', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1068', '1054', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1140', '1054', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1070', '1055', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1139', '1055', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1076', '1079', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1081', '1082', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1167', '1082', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1083', '1084', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1150', '1084', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1168', '1084', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1086', '1087', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1169', '1087', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1088', '1090', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1089', '1091', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1092', '1093', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1126', '1093', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1094', '1095', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1109', '1095', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1101', '1102', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1103', '1104', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1105', '1107', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1106', '1108', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1110', '1114', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1112', '1115', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1123', '1128', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1124', '1129', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1125', '1131', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1127', '1132', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1135', '1141', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1136', '1143', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1137', '1144', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1138', '1145', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1153', '1155', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1154', '1156', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1170', '1178', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1171', '1180', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1172', '1181', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1173', '1182', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1174', '1183', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1175', '1184', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1185', '1191', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1176', '1192', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1186', '1193', '0');
INSERT INTO `field_ingredient` (`pages_id`, `data`, `sort`) VALUES('1187', '1194', '0');

DROP TABLE IF EXISTS `field_ingredientlist`;
CREATE TABLE `field_ingredientlist` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ingredientlist` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1074', '1076,1081,1083,1086,1088,1089,1092,1094', '8', '1075');
INSERT INTO `field_ingredientlist` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1062', '1064,1065,1066,1067,1068,1069,1070', '7', '1063');
INSERT INTO `field_ingredientlist` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1099', '1101,1103,1105,1106,1109,1110,1111,1112,1113', '9', '1100');
INSERT INTO `field_ingredientlist` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1121', '1123,1124,1125,1126,1127', '5', '1122');
INSERT INTO `field_ingredientlist` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1133', '1135,1136,1137,1159,1138,1139,1140,1150,1153,1154', '10', '1134');
INSERT INTO `field_ingredientlist` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1164', '1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1185,1186,1187', '14', '1165');

DROP TABLE IF EXISTS `field_ingredientwrapper`;
CREATE TABLE `field_ingredientwrapper` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ingredientwrapper` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1024', '1062', '1', '1061');
INSERT INTO `field_ingredientwrapper` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1071', '1074', '1', '1072');
INSERT INTO `field_ingredientwrapper` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1118', '1121,1133', '2', '1119');
INSERT INTO `field_ingredientwrapper` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1161', '1164', '1', '1162');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1018', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1018', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--admin-php.json', '0', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1202', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--admintheme-php.json', '1', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '709', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--adminthemeframework-php.json', '2', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '982', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--field-php.json', '3', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '498', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--fieldgroups-php.json', '4', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '589', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--fields-php.json', '5', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '988', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--fieldselectorinfo-php.json', '6', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1388', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--fieldtype-php.json', '7', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1019', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--fieldtypemulti-php.json', '8', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1513', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--filecompiler-php.json', '9', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '226', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--filecompilermodule-php.json', '10', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '474', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--filevalidatormodule-php.json', '11', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '414', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--functions-php.json', '12', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '3741', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--imagesizerengine-php.json', '13', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1495', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--imagesizerenginegd-php.json', '14', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '435', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--inputfield-php.json', '15', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '5460', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--inputfieldwrapper-php.json', '16', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '332', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--interfaces-php.json', '17', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '116', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--languagefunctions-php.json', '18', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1814', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--markupqa-php.json', '19', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '732', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--modules-php.json', '20', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '3553', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--modulesduplicates-php.json', '21', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '490', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--pagefile-php.json', '22', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '112', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--pageimage-php.json', '23', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '239', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--pages-php.json', '24', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '343', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--pageseditor-php.json', '25', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1336', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--pagesexportimport-php.json', '26', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1230', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--paginatedarray-php.json', '27', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '432', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--password-php.json', '28', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '305', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--permissions-php.json', '29', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1856', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--process-php.json', '30', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '436', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--processcontroller-php.json', '31', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '258', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--sanitizer-php.json', '32', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '252', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--session-php.json', '33', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '162', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--sessioncsrf-php.json', '34', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '231', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--templatefile-php.json', '35', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '120', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--tfa-php.json', '36', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1814', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--upload-php.json', '37', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '89', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wire-php.json', '38', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '104', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wirecache-php.json', '39', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '760', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wiredatetime-php.json', '40', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '2063', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wirehttp-php.json', '41', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '535', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wireshutdown-php.json', '42', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '2724', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wiretempdir-php.json', '43', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '373', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wiretexttools-php.json', '44', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '122', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--core--wireupload-php.json', '45', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1781', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '46', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '655', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemedefault--adminthemedefaulthelpers-php.json', '47', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '839', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemedefault--default-php.json', '48', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '441', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '49', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '4267', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '50', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1071', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '51', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1698', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemeuikit--_footer-php.json', '52', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '274', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemeuikit--_masthead-php.json', '53', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '276', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemeuikit--_sidenav-masthead-php.json', '54', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '519', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemeuikit--adminthemeuikit-module.json', '55', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '2711', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--admintheme--adminthemeuikit--config-php.json', '56', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '13746', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '57', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1055', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '58', '[null]', '2021-06-08 19:51:29', '2021-06-08 19:51:29', '', '1932', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '59', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '852', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json', '60', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '3336', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json', '61', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '481', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '62', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '13934', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '63', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2930', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '64', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1955', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '65', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '762', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypefile-module.json', '66', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '6127', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypefloat-module.json', '67', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '539', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeinteger-module.json', '68', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2062', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypemodule-module.json', '69', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2018', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json', '70', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '989', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json', '71', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '3471', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json', '72', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '840', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypepage-module.json', '73', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '3145', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '74', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4142', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtyperepeater--config-php.json', '75', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '7148', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtyperepeater--fieldsetpageinstructions-php.json', '76', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2648', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtyperepeater--fieldtypefieldsetpage-module.json', '77', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '834', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '78', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4126', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '79', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2555', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeselector-module.json', '80', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '746', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypetext-module.json', '81', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '845', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypetextarea-module.json', '82', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2978', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypetextareahelper-php.json', '83', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '6804', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--fieldtype--fieldtypeurl-module.json', '84', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '3299', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--filecompilertags-module.json', '85', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '377', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--image--imagesizerengineanimatedgif--imagesizerengineanimatedgif-module.json', '86', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '390', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--image--imagesizerengineimagick--imagesizerengineimagick-module.json', '87', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '511', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '88', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1207', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldbutton-module.json', '89', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '416', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '90', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1785', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '91', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '864', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '92', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '13464', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '93', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '5968', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldemail-module.json', '94', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1216', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldfieldset-module.json', '95', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '404', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '96', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4580', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldfloat-module.json', '97', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '377', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldform-module.json', '98', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '498', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldhidden-module.json', '99', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '603', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json', '100', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '505', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '101', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '13318', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldinteger-module.json', '102', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2347', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldmarkup-module.json', '103', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1070', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldname-module.json', '104', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '566', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '105', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '14198', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '106', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4001', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '107', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1148', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '108', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1258', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '109', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1435', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '110', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '5532', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '111', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '327', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '112', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '516', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json', '113', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '6434', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '114', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1055', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldselect-module.json', '115', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4235', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '116', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '593', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '117', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '8543', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '118', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '399', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldtext-module.json', '119', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4989', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldtextarea-module.json', '120', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '775', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldtinymce--inputfieldtinymce-module.json', '121', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2528', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--inputfield--inputfieldurl-module.json', '122', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '953', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--jquery--jqueryui--jqueryui-module.json', '123', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '332', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '124', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '887', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--languageparser-php.json', '125', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '708', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--languagesupport-module.json', '126', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '837', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--languagesupportfields-module.json', '127', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '855', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--languagesupportinstall-php.json', '128', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1500', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '129', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2244', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--languagetabs-module.json', '130', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '662', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--languagetranslator-php.json', '131', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '3290', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--languagesupport--processlanguage-module.json', '132', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2719', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--markup--markuppagefields-module.json', '133', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '236', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '134', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '970', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--page--pagefrontedit--pagefrontedit-module.json', '135', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '663', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json', '136', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '6220', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--pagepaths-module.json', '137', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '535', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--pagerender-module.json', '138', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1355', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json', '139', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '5386', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processfield--processfield-module.json', '140', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '35726', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processfield--processfieldexportimport-php.json', '141', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '6377', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processforgotpassword-module.json', '142', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '11673', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processhome-module.json', '143', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '492', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processlist-module.json', '144', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '688', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processlogger--processlogger-module.json', '145', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4673', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processlogin--processlogin-module.json', '146', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '5237', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processmodule--processmodule-module.json', '147', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '18145', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '148', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2659', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpageadd--processpageadd-module.json', '149', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4938', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpageclone-module.json', '150', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2566', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpageedit--pagebookmarks-php.json', '151', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1984', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpageedit--processpageedit-module.json', '152', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '16250', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '153', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '10542', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '154', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '6844', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagelist--processpagelist-module.json', '155', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '7076', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagelist--processpagelistactions-php.json', '156', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1247', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagelist--processpagelistrender-php.json', '157', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1367', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagelist--processpagelistrenderjson-php.json', '158', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '546', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagelister--processpagelister-module.json', '159', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4770', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json', '160', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '4906', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '161', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '7896', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagesearch--processpagesearchlive-php.json', '162', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '3085', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagesexportimport--processpagesexportimport-module.json', '163', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '13012', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagesort-module.json', '164', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1219', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagetrash-module.json', '165', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2943', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpagetype--processpagetype-module.json', '166', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1090', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpageview-module.json', '167', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '400', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processpermission--processpermission-module.json', '168', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1696', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processprofile--processprofile-module.json', '169', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '3132', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '170', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2610', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processrole--processrole-module.json', '171', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '9850', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processtemplate--processtemplate-module.json', '172', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '65345', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '173', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '6366', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processuser--processuser-module.json', '174', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2130', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--process--processuser--processuserconfig-php.json', '175', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '803', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '176', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1595', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '177', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1562', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '178', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2276', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '179', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2645', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '180', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '5954', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--system--systemupdater--systemupdater-module.json', '181', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1113', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--textformatter--textformatterentities-module.json', '182', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1219', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--textformatter--textformattermarkdownextra--markdown-php.json', '183', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '204', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--textformatter--textformattermarkdownextra--parsedown--parsedown-php.json', '184', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '228', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json', '185', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '375', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json', '186', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '1371', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--templates-admin--debug-inc.json', '187', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2107', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--templates-admin--default-php.json', '188', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '2367', '41', '41');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`) VALUES('1020', 'wire--templates-admin--topnav-inc.json', '189', '[null]', '2021-06-08 19:51:30', '2021-06-08 19:51:30', '', '130', '41', '41');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_license`;
CREATE TABLE `field_license` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '170');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '171');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1117', '183');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1147', '184');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1195', '185');

DROP TABLE IF EXISTS `field_quantity`;
CREATE TABLE `field_quantity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1069', '20');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1068', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1067', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1066', '2');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1065', '2');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1064', '4');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1076', '3');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1081', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1083', '2');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1086', '1.5');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1088', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1089', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1092', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1094', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1101', '140');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1103', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1105', '100');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1106', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1109', '400');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1110', '170');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1111', '170');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1112', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1113', '170');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1123', '500');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1124', '300');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1125', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1126', '1.5');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1127', '4');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1135', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1136', '50');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1137', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1138', '4');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1140', '0.25');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1150', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1153', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1154', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1159', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1139', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1070', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1166', '200');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1167', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1168', '2');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1169', '1');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1170', '2');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1171', '0.5');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1172', '2');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1173', '2');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1174', '0.5');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1175', '0.5');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1176', '0.5');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1185', '0.25');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1186', '0.25');
INSERT INTO `field_quantity` (`pages_id`, `data`) VALUES('1187', '0.25');

DROP TABLE IF EXISTS `field_related`;
CREATE TABLE `field_related` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_related` (`pages_id`, `data`, `sort`) VALUES('1161', '1071', '0');
INSERT INTO `field_related` (`pages_id`, `data`, `sort`) VALUES('1071', '1161', '0');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_steps`;
CREATE TABLE `field_steps` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_steps` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1024', '1038,1039,1040,1041,1042,1043', '6', '1037');
INSERT INTO `field_steps` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1071', '1096,1097', '2', '1073');
INSERT INTO `field_steps` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1118', '1146,1149,1151,1152', '4', '1120');
INSERT INTO `field_steps` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1161', '1188,1189,1190', '3', '1163');

DROP TABLE IF EXISTS `field_time`;
CREATE TABLE `field_time` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` time NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1039', '00:15:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1161', '01:15:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1024', '00:35:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1096', '00:05:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1071', '00:25:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1118', '02:00:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1146', '01:30:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1151', '00:10:00');
INSERT INTO `field_time` (`pages_id`, `data`) VALUES('1152', '00:12:00');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1020` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1020` (`data1020`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1020` (`data1020`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('11', 'Templates', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('16', 'Fields', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('22', 'Setup', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('3', 'Pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('6', 'Add Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('8', 'Tree', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('9', 'Save Sort', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('10', 'Edit', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('21', 'Modules', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('29', 'Users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('30', 'Roles', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('2', 'Admin', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('7', 'Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('27', '404 Not Found', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('302', 'Insert Link', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('23', 'Login', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('304', 'Profile', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('301', 'Empty Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('300', 'Search', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('303', 'Insert Image', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('28', 'Access', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('31', 'Permissions', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('32', 'Edit pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('34', 'Delete pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('35', 'Move pages (change parent)', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('36', 'View pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('50', 'Sort child pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('51', 'Change templates on pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('52', 'Administer users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('53', 'User can update profile/password', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('54', 'Lock or unlock a page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1', 'Home', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1006', 'Use Page Lister', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1007', 'Find', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1010', 'Recent', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1011', 'Can see recently edited pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1012', 'Logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1013', 'Can view system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1014', 'Can manage system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1015', 'Repeaters', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1016', 'Administer languages and static translation files', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1017', 'Languages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1018', 'Default', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1019', 'Language Translator', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1020', 'fr', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1021', 'All ingredients', 'Tous les ingrédients');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1022', 'ingredientWrapper', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1023', 'All recipes', 'Toutes les recettes');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1024', 'Turnip soup', 'Poelee des navets');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1061', 'turnip-soup', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1027', 'All units', 'Toutes les unités');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1028', 'Kilogram', 'Kilogramme');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1029', 'handful', 'poignée de');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1030', 'teaspoon', 'cuilere à café');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1031', 'Spinach', 'épinard');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1032', 'All categories', 'Toutes les catégories');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1033', 'Vegetarian', 'Vegetarian');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1034', 'Vegan', 'Vegan');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1035', 'Indian', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1036', 'steps', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1037', 'turnip-soup', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1038', 'Cutting', 'Couper');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1039', 'Cook Potatos', 'Pommes de terre');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1040', 'Spinach', 'Epinard');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1041', 'Saute the onions', 'Sauter les oignons');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1042', 'Cook', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1043', 'Add spices', 'Epices');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1050', 'firm-fleshed-potatoes', 'pommes de terre à chair ferme');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1051', 'Turnip', 'Navet');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1052', 'Onion', 'Oignon');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1053', 'Butter', 'Beurre');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1054', 'Paprika-ground', 'Paprika moulu');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1055', 'Salt & Pepper', 'Sel & Poivre');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1056', 'gram', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1057', 'pieces', 'pièces');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1058', 'Soup', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1059', 'REST Recipe Endpoint', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1060', 'ingredientWrapper', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1062', 'Turnip soup', 'Poelee des navets');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1063', '1622801943-2818-1', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1071', 'Gomen Wot (Ethiopian collard greens)', 'Gomen Wot (chou kale éthiopien)');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1072', 'gomen-wot-ethiopian-collard-greens', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1073', 'gomen-wot-ethiopian-collard-greens', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1074', 'Gomen Wot', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1075', '1622805051-1308-1', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1077', 'Exotic', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1078', 'African', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1079', 'Niter kibbeh', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1080', 'tablespoon', 'cuillère à soupe');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1082', 'Onion yellow', 'Oignon jaune');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1084', 'garlic', 'ail');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1085', 'clove', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1087', 'fresh ginger', 'gingembre frais');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1090', 'Cumin ground', 'Cumin moulu');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1091', 'Ground coriander', 'Coriandre moulue');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1093', 'salt', 'sel');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1095', 'Chou kale Red Russian', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1096', 'Niter kibbeh', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1097', 'Saute', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1098', 'Paniers', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1099', 'Semaine 123', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1100', 'semaine-x', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1102', 'Salade asiatique', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1104', 'Persil', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1107', 'Roquette', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1108', 'Radis', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1114', 'Corn salad', 'Doucette');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1115', 'Batavia', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1116', 'Paniers', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1117', 'Adminer', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1118', 'Pide with Spinach & Tomato', 'Pide avec epinard et tomate');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1119', 'pide-with-spinach-tomato', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1120', 'pide-with-spinach-tomato', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1121', 'Dough', 'Pate');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1122', '1622906254-0702-1', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1128', 'Flour', 'Farine');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1129', 'Water', 'Eau');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1130', 'milliliter', 'millilitre');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1131', 'Sugar', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1132', 'Olive oil', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1133', 'Filling', 'Fourrage');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1134', '1622906428-9302-1', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1141', 'Feta', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1142', 'block', 'bloc');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1143', 'Gruyere', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1144', 'Spring onion', 'Oignon de printemps');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1145', 'Tomato', 'Tomate');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1146', 'Prepare the dough', 'Préparez la pâte');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1147', 'Translation', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1148', 'Use Fluency translation', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1149', 'Filling', 'Fourrage');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1151', 'Dough', 'Pate');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1152', 'Assembly', 'Montage');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1155', 'Sesame', 'Sésame');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1156', 'Egg', 'Œuf');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1157', 'Asian', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1158', 'Quick', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1160', 'pinch', 'prise');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1161', 'Niter kibbeh (ethiopian spiced butter)', 'Niter kibbeh (beurre épicé éthiopien)');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1162', 'niter-kibbeh-ethiopian-spiced-butter', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1163', 'niter-kibbeh-ethiopian-spiced-butter', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1164', 'Niter Kibbeh', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1165', '1623051828-8209-1', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1177', 'thumb-length', 'longueur du pouce');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1178', 'Cinnamon stick', 'Bâton de cannelle');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1179', 'centimeter', 'centimètre');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1180', 'Whole black pepper', 'Poivre noir entier');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1181', 'Black cardamom', 'Cardamome noire');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1182', 'Clove, whole', 'Girofle, entier');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1183', 'Fenugreek seeds', 'Graines de fenugrec');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1184', 'coriander seeds', 'graines de coriandre');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1188', 'Toast the spices', 'Faire griller les épices');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1189', 'Infuse the butter with the spieces', 'Infuser le beurre avec les épices');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1190', 'Filtering', 'Filtrage');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1191', 'Cumin seeds', 'Graines de cumin');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1192', 'Oregano dried', 'Origan séché');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1193', 'Nutmeg ground', 'Noix de muscade moulue');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1194', 'Turmeric ground', 'Curcuma moulu');
INSERT INTO `field_title` (`pages_id`, `data`, `data1020`) VALUES('1195', 'Export Site Profile', '');

DROP TABLE IF EXISTS `field_unit`;
CREATE TABLE `field_unit` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1064', '1029', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1094', '1029', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1103', '1029', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1106', '1029', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1068', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1086', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1088', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1089', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1125', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1126', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1140', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1171', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1174', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1175', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1176', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1185', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1186', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1187', '1030', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1069', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1101', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1105', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1109', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1110', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1111', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1113', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1123', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1136', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1166', '1056', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1065', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1066', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1067', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1081', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1112', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1137', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1138', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1154', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1167', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1172', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1173', '1057', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1076', '1080', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1127', '1080', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1153', '1080', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1083', '1085', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1150', '1085', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1168', '1085', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1124', '1130', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1135', '1142', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1070', '1160', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1092', '1160', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1139', '1160', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1169', '1177', '0');
INSERT INTO `field_unit` (`pages_id`, `data`, `sort`) VALUES('1170', '1179', '0');

DROP TABLE IF EXISTS `field_week`;
CREATE TABLE `field_week` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'recipe');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'ingredient');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'collection');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_ingredientList');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'unit');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'repeater_steps');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'api');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'repeater_ingredientWrapper');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'panier');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'panier-endpoint');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'field-image');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '120', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '121', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '108', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '104', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '107', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '101', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '112', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '110', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '118', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '121', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '114', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '112', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '115', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '119', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '118', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '117', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '113', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '106', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '109', '9', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":14}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":14}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1017,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypePage', 'ingredient', '0', 'Ingredient', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1021,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"useAjax\":0,\"allowUserTags\":0,\"closeAfterSelect\":1,\"maxItems\":0,\"template_id\":45}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeRepeater', 'ingredientList', '224', 'List of ingredients', '{\"template_id\":47,\"parent_id\":1022,\"repeaterFields\":[101,121,104,106],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"familyFriendly\":0,\"collapsed\":0,\"label1020\":\"Liste des ingredients\",\"repeaterTitle\":\"#n: {ingredient}\",\"viewRoles\":[37]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'quantity', '0', '', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeTextLanguage', 'abbreviation', '0', '', '{\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypePage', 'unit', '0', 'Unit', '{\"derefAsPage\":2,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1027,\"labelFieldName\":\"title\",\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\",\"template_id\":48,\"label1020\":\"Unite\",\"addable\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypePage', 'category', '0', 'Category', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldTextTags\",\"parent_id\":1032,\"template_id\":49,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"label1020\":\"Categorie\",\"useAjax\":0,\"allowUserTags\":0,\"closeAfterSelect\":1,\"maxItems\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeRepeater', 'steps', '0', 'Steps', '{\"label1020\":\"Instructions\",\"template_id\":50,\"parent_id\":1036,\"repeaterFields\":[1,110,112],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"familyFriendly\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeTextareaLanguage', 'desc', '0', 'Description', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"htmlOptions\":[2,4],\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeTime', 'time', '0', 'Duration', '{\"format\":\"HH24MM\",\"collapsed\":9,\"useColons\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeInteger', 'defaultPersons', '0', 'Number of persons', '{\"label1020\":\"Nombre des personnes\",\"icon\":\"users\",\"zeroNotEmpty\":0,\"defaultValue\":4,\"collapsed\":0,\"required\":1,\"inputType\":\"text\",\"size\":10,\"min\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeRepeater', 'ingredientWrapper', '224', 'IngredientWrapper', '{\"template_id\":52,\"parent_id\":1060,\"repeaterFields\":[1,102],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"familyFriendly\":0,\"collapsed\":0,\"viewRoles\":[37]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeImage', 'image', '0', 'image', '{\"icon\":\"picture-o\",\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"list\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeDatetime', 'week', '0', 'week', '{\"collapsed\":0,\"inputType\":\"text\",\"htmlType\":\"date\",\"dateSelectFormat\":\"yMd\",\"yearFrom\":1921,\"yearTo\":2041,\"yearLock\":0,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"l, j F Y\",\"size\":25}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeText', 'license', '0', 'License', '{\"description\":\"The license condition of the image that you are uploading.  Default Creative Commons Attribution Share Alike 4.0 (BY SA).\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeText', 'creator', '0', 'creator', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeURL', 'creator_url', '0', 'Creator URL', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":1,\"allowIDN\":1,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypePage', 'related', '0', 'Related', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1023,\"template_id\":43,\"labelFieldName\":\"title\",\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeTextLanguage', 'hint', '0', 'hint', '');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeCache', '1', '', '2021-06-04 10:34:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1015,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2021-06-04 10:35:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":19,\"coreVersion\":\"3.0.179\"}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2021-06-04 10:32:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypeOptions', '1', '', '2021-06-04 10:34:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2021-06-04 10:33:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2021-06-04 10:33:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2021-06-04 10:33:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2021-06-04 10:33:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'InputfieldRepeater', '0', '', '2021-06-04 10:35:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'InputfieldTextTags', '0', '', '2021-06-04 10:35:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'InputfieldPageAutocomplete', '0', '', '2021-06-04 10:36:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'LanguageSupport', '35', '{\"languagesPageID\":1017,\"defaultLanguagePageID\":1018,\"otherLanguagePageIDs\":[1020],\"languageTranslatorPageID\":1019}', '2021-06-04 10:36:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'ProcessLanguage', '1', '', '2021-06-04 10:36:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'ProcessLanguageTranslator', '1', '', '2021-06-04 10:36:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'LanguageSupportFields', '3', '', '2021-06-04 10:37:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'FieldtypeTextLanguage', '1', '', '2021-06-04 10:37:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'FieldtypePageTitleLanguage', '1', '', '2021-06-04 10:37:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'FieldtypeTextareaLanguage', '1', '', '2021-06-04 10:37:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":10,\"pageNumUrlPrefix1018\":\"page\",\"useHomeSegment\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2021-06-04 10:37:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'LanguageTabs', '11', '{\"tabField\":\"title\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2021-06-04 10:37:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'InputfieldToggle', '0', '', '2021-06-04 10:40:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'InputfieldTime', '0', '', '2021-06-04 11:28:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'FieldtypeTime', '0', '', '2021-06-04 11:28:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'PageQueryBoss', '3', '', '2021-06-04 11:51:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'TracyDebugger', '3', '{\"apiDataVersion\":\"3.0.179\"}', '2021-06-04 13:46:01');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'ProcessTracyAdminer', '1', '', '2021-06-04 13:46:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'Fluency', '3', '{\"deepl_api_key\":\"415d6332-70ea-ce7d-6338-c72d5682e88d:fx\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\",\"api_key_valid\":true,\"non_translated_strings\":\"\",\"api_param_preserve_formatting\":\"1\",\"pw_language_1018\":\"EN\",\"pw_language_1020\":\"FR\"}', '2021-06-05 17:39:56');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1020` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1020` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1020_parent_id` (`name1020`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1196 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1', '0', '1', 'home', '9', '2021-06-06 13:51:31', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', 'fr', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('2', '1', '2', 'processwire', '1035', '2021-06-04 10:33:35', '40', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('3', '2', '2', 'page', '21', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('6', '3', '2', 'add', '21', '2021-06-04 10:33:48', '40', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('7', '1', '2', 'trash', '1039', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('8', '3', '2', 'list', '21', '2021-06-04 10:33:53', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('9', '3', '2', 'sort', '1047', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('10', '3', '2', 'edit', '1045', '2021-06-04 10:33:50', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('11', '22', '2', 'template', '21', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('16', '22', '2', 'field', '21', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('21', '2', '2', 'module', '21', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('22', '2', '2', 'setup', '21', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('23', '2', '2', 'login', '1035', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('27', '1', '29', 'http404', '1035', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '3', '2021-06-04 10:32:51', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('28', '2', '2', 'access', '13', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('29', '28', '2', 'users', '29', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('30', '28', '2', 'roles', '29', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('31', '28', '2', 'permissions', '29', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('32', '31', '5', 'page-edit', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('34', '31', '5', 'page-delete', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('35', '31', '5', 'page-move', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('36', '31', '5', 'page-view', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('37', '30', '4', 'guest', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('38', '30', '4', 'superuser', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('41', '29', '3', 'admin', '1', '2021-06-09 09:37:17', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('40', '29', '3', 'guest', '25', '2021-06-04 10:36:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('50', '31', '5', 'page-sort', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('51', '31', '5', 'page-template', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('52', '31', '5', 'user-admin', '25', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('53', '31', '5', 'profile-edit', '1', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('54', '31', '5', 'page-lock', '1', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('300', '3', '2', 'search', '1045', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('301', '3', '2', 'trash', '1047', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('302', '3', '2', 'link', '1041', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('303', '3', '2', 'image', '1041', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '2', '2021-06-04 10:32:51', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('304', '2', '2', 'profile', '1025', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '41', '2021-06-04 10:32:51', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1006', '31', '5', 'page-lister', '1', '2021-06-04 10:32:51', '40', '2021-06-04 10:32:51', '40', '2021-06-04 10:32:51', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1007', '3', '2', 'lister', '1', '2021-06-04 10:32:51', '40', '2021-06-04 10:32:51', '40', '2021-06-04 10:32:51', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1010', '3', '2', 'recent-pages', '1', '2021-06-04 10:33:33', '40', '2021-06-04 10:33:33', '40', '2021-06-04 10:33:33', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2021-06-04 10:33:34', '40', '2021-06-04 10:33:34', '40', '2021-06-04 10:33:34', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1012', '22', '2', 'logs', '1', '2021-06-04 10:33:42', '40', '2021-06-04 10:33:42', '40', '2021-06-04 10:33:42', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1013', '31', '5', 'logs-view', '1', '2021-06-04 10:33:42', '40', '2021-06-04 10:33:42', '40', '2021-06-04 10:33:42', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1014', '31', '5', 'logs-edit', '1', '2021-06-04 10:33:42', '40', '2021-06-04 10:33:42', '40', '2021-06-04 10:33:42', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1015', '2', '2', 'repeaters', '1036', '2021-06-04 10:35:17', '41', '2021-06-04 10:35:17', '41', '2021-06-04 10:35:17', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1016', '31', '5', 'lang-edit', '1', '2021-06-04 10:36:50', '41', '2021-06-04 10:36:50', '41', '2021-06-04 10:36:50', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1017', '22', '2', 'languages', '16', '2021-06-04 10:36:50', '41', '2021-06-04 10:36:50', '41', '2021-06-04 10:36:50', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1018', '1017', '44', 'default', '16', '2021-06-04 10:36:50', '41', '2021-06-04 10:36:50', '41', '2021-06-04 10:36:50', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1019', '22', '2', 'language-translator', '1040', '2021-06-04 10:36:51', '41', '2021-06-04 10:36:51', '41', '2021-06-04 10:36:51', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1020', '1017', '44', 'fr', '1', '2021-06-08 21:51:41', '41', '2021-06-04 10:38:06', '41', '2021-06-04 10:38:06', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1021', '1', '46', 'ingredients', '1', '2021-06-08 21:52:01', '41', '2021-06-04 10:42:04', '41', '2021-06-04 10:42:04', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1022', '1015', '2', 'for-field-102', '17', '2021-06-04 10:43:40', '41', '2021-06-04 10:43:40', '41', '2021-06-04 10:43:40', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1023', '1', '46', 'recipes', '1', '2021-06-08 22:00:09', '41', '2021-06-04 10:45:05', '41', '2021-06-04 10:45:05', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1024', '1023', '43', 'turnip-soup', '1', '2021-06-09 10:44:01', '41', '2021-06-04 10:45:50', '41', '2021-06-04 10:52:27', '0', 'poelee-des-navets', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1061', '1060', '2', 'for-page-1024', '17', '2021-06-04 12:19:00', '41', '2021-06-04 12:19:00', '41', '2021-06-04 12:19:00', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1062', '1061', '52', '1622801943-2818-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:19:03', '41', '2021-06-04 12:21:12', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1027', '1', '46', 'units', '1', '2021-06-08 22:00:22', '41', '2021-06-04 10:49:16', '41', '2021-06-04 10:49:16', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1028', '1027', '48', 'kilogram', '1', '2021-06-08 22:00:42', '41', '2021-06-04 10:49:29', '41', '2021-06-04 10:49:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1029', '1027', '48', 'handful', '1', '2021-06-08 22:00:58', '41', '2021-06-04 10:50:07', '41', '2021-06-04 10:50:30', '1', 'poignees', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1030', '1027', '48', 'teaspoon', '1', '2021-06-04 10:51:04', '41', '2021-06-04 10:50:53', '41', '2021-06-04 10:51:04', '2', 'cuil-a-cafe', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1031', '1021', '45', 'spinach', '1', '2021-06-06 11:30:26', '41', '2021-06-04 10:52:27', '41', '2021-06-04 10:52:27', '0', 'epinard', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1036', '1015', '2', 'for-field-109', '17', '2021-06-04 11:24:12', '41', '2021-06-04 11:24:12', '41', '2021-06-04 11:24:12', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1032', '1', '46', 'categories', '1', '2021-06-08 22:12:51', '41', '2021-06-04 10:54:20', '41', '2021-06-04 10:54:20', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1033', '1032', '49', 'vegetarian', '1', '2021-06-04 10:54:41', '41', '2021-06-04 10:54:41', '41', '2021-06-04 10:54:41', '0', 'vegetarian', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1034', '1032', '49', 'vegan', '1', '2021-06-04 10:54:56', '41', '2021-06-04 10:54:56', '41', '2021-06-04 10:54:56', '1', 'vegan', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1035', '1032', '49', 'indian', '1', '2021-06-04 11:11:37', '41', '2021-06-04 11:11:37', '41', '2021-06-04 11:11:37', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1037', '1036', '2', 'for-page-1024', '17', '2021-06-04 11:30:42', '41', '2021-06-04 11:30:42', '41', '2021-06-04 11:30:42', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1038', '1037', '50', '1622799044-6963-1', '1', '2021-06-04 11:39:58', '41', '2021-06-04 11:30:44', '41', '2021-06-04 11:38:49', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1039', '1037', '50', '1622799087-1797-1', '1', '2021-06-06 20:51:40', '41', '2021-06-04 11:31:27', '41', '2021-06-04 11:38:49', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1040', '1037', '50', '1622799145-4045-1', '1', '2021-06-04 11:39:58', '41', '2021-06-04 11:32:25', '41', '2021-06-04 11:38:49', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1041', '1037', '50', '1622799193-4789-1', '1', '2021-06-04 11:39:58', '41', '2021-06-04 11:33:13', '41', '2021-06-04 11:38:49', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1042', '1037', '50', '1622799261-3863-1', '1', '2021-06-06 20:51:40', '41', '2021-06-04 11:34:21', '41', '2021-06-04 11:38:49', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1043', '1037', '50', '1622799330-7901-1', '1', '2021-06-04 11:39:58', '41', '2021-06-04 11:35:30', '41', '2021-06-04 11:38:49', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1067', '1063', '47', '1622802020-0678-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:20:20', '41', '2021-06-04 12:21:12', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1066', '1063', '47', '1622802001-1031-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:20:01', '41', '2021-06-04 12:21:12', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1065', '1063', '47', '1622801988-8895-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:19:48', '41', '2021-06-04 12:21:12', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1064', '1063', '47', '1622801976-1711-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:19:36', '41', '2021-06-04 12:21:12', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1063', '1022', '2', 'for-page-1062', '17', '2021-06-04 12:19:03', '41', '2021-06-04 12:19:03', '41', '2021-06-04 12:19:03', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1050', '1021', '45', 'firm-fleshed-potatoes', '1', '2021-06-04 12:25:15', '41', '2021-06-04 11:38:49', '41', '2021-06-04 11:38:49', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1051', '1021', '45', 'turnip', '1', '2021-06-04 12:25:47', '41', '2021-06-04 11:38:49', '41', '2021-06-04 11:38:49', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1052', '1021', '45', 'onion', '1', '2021-06-04 12:25:31', '41', '2021-06-04 11:38:49', '41', '2021-06-04 11:38:49', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1053', '1021', '45', 'butter', '1', '2021-06-04 12:26:01', '41', '2021-06-04 11:38:49', '41', '2021-06-04 11:38:49', '4', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1055', '1021', '45', 'salt-pepper', '1', '2021-06-04 12:30:27', '41', '2021-06-04 11:40:12', '41', '2021-06-04 11:40:12', '6', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1054', '1021', '45', 'paprika-ground', '1', '2021-06-04 12:25:04', '41', '2021-06-04 11:39:58', '41', '2021-06-04 11:39:58', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1056', '1027', '48', 'gram', '1', '2021-06-04 13:35:20', '41', '2021-06-04 11:40:25', '41', '2021-06-04 11:40:25', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1057', '1027', '48', 'pieces', '1', '2021-06-05 20:20:38', '41', '2021-06-04 11:40:40', '41', '2021-06-04 11:40:40', '4', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1058', '1032', '49', 'soup', '1', '2021-06-04 11:46:27', '41', '2021-06-04 11:46:27', '41', '2021-06-04 11:46:27', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1059', '1', '51', 'recipe-search', '1', '2021-06-06 09:09:28', '41', '2021-06-04 11:51:09', '41', '2021-06-04 11:51:10', '7', 'recipe-search', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1060', '1015', '2', 'for-field-114', '17', '2021-06-04 12:18:08', '41', '2021-06-04 12:18:08', '41', '2021-06-04 12:18:08', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1068', '1063', '47', '1622802035-8974-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:20:35', '41', '2021-06-04 12:21:12', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1069', '1063', '47', '1622802054-1984-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:20:54', '41', '2021-06-04 12:21:12', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1070', '1063', '47', '1622802065-0566-1', '1', '2021-06-06 20:50:56', '41', '2021-06-04 12:21:05', '41', '2021-06-04 12:21:12', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1071', '1023', '43', 'gomen-wot-ethiopian-collard-greens', '1', '2021-06-07 18:09:14', '41', '2021-06-04 13:10:37', '41', '2021-06-04 13:11:16', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1072', '1060', '2', 'for-page-1071', '17', '2021-06-04 13:10:37', '41', '2021-06-04 13:10:37', '41', '2021-06-04 13:10:37', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1073', '1036', '2', 'for-page-1071', '17', '2021-06-04 13:10:37', '41', '2021-06-04 13:10:37', '41', '2021-06-04 13:10:37', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1074', '1072', '52', '1622805051-1308-1', '1', '2021-06-07 10:08:05', '41', '2021-06-04 13:10:51', '41', '2021-06-04 13:11:16', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1075', '1022', '2', 'for-page-1074', '17', '2021-06-04 13:10:51', '41', '2021-06-04 13:10:51', '41', '2021-06-04 13:10:51', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1076', '1075', '47', '1622805057-5885-1', '1', '2021-06-07 10:08:05', '41', '2021-06-04 13:10:57', '41', '2021-06-04 13:11:16', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1077', '1032', '49', 'exotic', '1', '2021-06-04 13:11:16', '41', '2021-06-04 13:11:16', '41', '2021-06-04 13:11:16', '4', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1078', '1032', '49', 'african', '1', '2021-06-04 13:11:16', '41', '2021-06-04 13:11:16', '41', '2021-06-04 13:11:16', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1080', '1027', '48', 'tablespoon', '1', '2021-06-08 22:01:26', '41', '2021-06-04 13:11:50', '41', '2021-06-04 13:11:50', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1079', '1021', '45', 'niter-kibbeh', '1', '2021-06-04 13:11:34', '41', '2021-06-04 13:11:34', '41', '2021-06-04 13:11:34', '7', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1081', '1075', '47', '1622805114-6008-1', '1', '2021-06-04 13:12:39', '41', '2021-06-04 13:11:54', '41', '2021-06-04 13:12:20', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1082', '1021', '45', 'onion-yellow', '1', '2021-06-08 21:44:29', '41', '2021-06-04 13:12:20', '41', '2021-06-04 13:12:20', '8', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1083', '1075', '47', '1622805147-505-1', '1', '2021-06-04 13:12:50', '41', '2021-06-04 13:12:27', '41', '2021-06-04 13:12:39', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1084', '1021', '45', 'garlic', '1', '2021-06-08 21:44:42', '41', '2021-06-04 13:12:39', '41', '2021-06-04 13:12:39', '9', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1085', '1027', '48', 'clove', '1', '2021-06-04 13:35:38', '41', '2021-06-04 13:12:50', '41', '2021-06-04 13:12:50', '6', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1086', '1075', '47', '1622805175-4429-1', '1', '2021-06-04 13:13:39', '41', '2021-06-04 13:12:55', '41', '2021-06-04 13:13:13', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1087', '1021', '45', 'fresh-ginger', '1', '2021-06-08 21:46:53', '41', '2021-06-04 13:13:13', '41', '2021-06-04 13:13:13', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1088', '1075', '47', '1622805199-4611-1', '1', '2021-06-04 13:13:58', '41', '2021-06-04 13:13:19', '41', '2021-06-04 13:13:39', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1089', '1075', '47', '1622805217-35-1', '1', '2021-06-04 13:13:58', '41', '2021-06-04 13:13:37', '41', '2021-06-04 13:13:39', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1090', '1021', '45', 'cumin-ground', '1', '2021-06-08 21:47:06', '41', '2021-06-04 13:13:39', '41', '2021-06-04 13:13:39', '11', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1091', '1021', '45', 'ground-coriander', '1', '2021-06-08 21:55:43', '41', '2021-06-04 13:13:58', '41', '2021-06-04 13:13:58', '12', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1092', '1075', '47', '1622805245-9229-1', '1', '2021-06-06 11:48:10', '41', '2021-06-04 13:14:05', '41', '2021-06-04 13:14:21', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1093', '1021', '45', 'salt', '1', '2021-06-08 21:47:53', '41', '2021-06-04 13:14:21', '41', '2021-06-04 13:14:21', '13', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1094', '1075', '47', '1622805268-4084-1', '1', '2021-06-06 11:48:10', '41', '2021-06-04 13:14:28', '41', '2021-06-04 13:15:03', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1095', '1021', '45', 'chou-kale-red-russian', '1', '2021-06-04 13:15:03', '41', '2021-06-04 13:15:03', '41', '2021-06-04 13:15:03', '14', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1096', '1073', '50', '1622805312-7202-1', '1', '2021-06-07 18:09:14', '41', '2021-06-04 13:15:12', '41', '2021-06-04 13:16:26', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1097', '1073', '50', '1622805337-8565-1', '1', '2021-06-07 18:09:14', '41', '2021-06-04 13:15:37', '41', '2021-06-04 13:16:26', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1118', '1023', '43', 'pide-with-spinach-tomato', '1', '2021-06-07 23:32:10', '41', '2021-06-05 17:14:53', '41', '2021-06-05 17:20:17', '2', 'pide-avec-epinard-et-tomate', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1098', '7', '46', '1098.1.8_paniers-1', '8193', '2021-06-04 13:32:44', '41', '2021-06-04 13:20:06', '41', '2021-06-04 13:20:51', '8', '1098.1.8_paniers-1', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1099', '1116', '53', 'semaine-x', '1', '2021-06-06 00:30:14', '41', '2021-06-04 13:21:30', '41', '2021-06-04 13:21:55', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1100', '1022', '2', 'for-page-1099', '17', '2021-06-04 13:21:30', '41', '2021-06-04 13:21:30', '41', '2021-06-04 13:21:30', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1101', '1100', '47', '1622805701-5925-1', '1', '2021-06-04 13:22:06', '41', '2021-06-04 13:21:41', '41', '2021-06-04 13:21:55', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1102', '1021', '45', 'salade-asiatique', '1', '2021-06-04 13:21:55', '41', '2021-06-04 13:21:55', '41', '2021-06-04 13:21:55', '15', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1104', '1021', '45', 'persil', '1', '2021-06-04 13:22:33', '41', '2021-06-04 13:22:33', '41', '2021-06-04 13:22:33', '16', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1103', '1100', '47', '1622805725-2397-1', '1', '2021-06-04 13:22:33', '41', '2021-06-04 13:22:05', '41', '2021-06-04 13:22:06', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1105', '1100', '47', '1622805758-8367-1', '1', '2021-06-04 13:27:05', '41', '2021-06-04 13:22:38', '41', '2021-06-04 13:23:07', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1106', '1100', '47', '1622805770-8885-1', '1', '2021-06-04 13:27:05', '41', '2021-06-04 13:22:50', '41', '2021-06-04 13:23:07', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1107', '1021', '45', 'roquette', '1', '2021-06-04 13:23:07', '41', '2021-06-04 13:23:07', '41', '2021-06-04 13:23:07', '17', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1108', '1021', '45', 'radis', '1', '2021-06-04 13:23:07', '41', '2021-06-04 13:23:07', '41', '2021-06-04 13:23:07', '18', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1109', '1100', '47', '1622805799-3787-1', '1', '2021-06-06 00:24:31', '41', '2021-06-04 13:23:19', '41', '2021-06-04 13:27:05', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1110', '1100', '47', '1622805902-8336-1', '1', '2021-06-06 00:24:31', '41', '2021-06-04 13:25:02', '41', '2021-06-04 13:27:05', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1111', '1100', '47', '1622805916-2612-1', '1', '2021-06-06 00:24:31', '41', '2021-06-04 13:25:16', '41', '2021-06-04 13:27:05', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1112', '1100', '47', '1622805989-047-1', '1', '2021-06-06 00:24:31', '41', '2021-06-04 13:26:29', '41', '2021-06-04 13:27:05', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1113', '1100', '47', '1622806004-2601-1', '1', '2021-06-06 00:24:31', '41', '2021-06-04 13:26:44', '41', '2021-06-04 13:27:05', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1114', '1021', '45', 'corn-salad', '1', '2021-06-08 21:47:40', '41', '2021-06-04 13:27:05', '41', '2021-06-04 13:27:05', '19', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1115', '1021', '45', 'batavia', '1', '2021-06-04 13:27:05', '41', '2021-06-04 13:27:05', '41', '2021-06-04 13:27:05', '20', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1116', '1', '54', 'paniers', '1', '2021-06-04 13:32:41', '41', '2021-06-04 13:32:23', '41', '2021-06-04 13:32:31', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1117', '22', '2', 'adminer', '1', '2021-06-04 13:46:02', '41', '2021-06-04 13:46:02', '41', '2021-06-04 13:46:02', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1119', '1060', '2', 'for-page-1118', '17', '2021-06-05 17:14:53', '41', '2021-06-05 17:14:53', '41', '2021-06-05 17:14:53', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1120', '1036', '2', 'for-page-1118', '17', '2021-06-05 17:14:53', '41', '2021-06-05 17:14:53', '41', '2021-06-05 17:14:53', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1121', '1119', '52', '1622906254-0702-1', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:17:34', '41', '2021-06-05 17:20:17', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1122', '1022', '2', 'for-page-1121', '17', '2021-06-05 17:17:34', '41', '2021-06-05 17:17:34', '41', '2021-06-05 17:17:34', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1123', '1122', '47', '1622906261-8615-1', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:17:41', '41', '2021-06-05 17:20:17', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1124', '1122', '47', '1622906315-3831-1', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:18:35', '41', '2021-06-05 17:20:17', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1125', '1122', '47', '1622906336-4178-1', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:18:56', '41', '2021-06-05 17:20:17', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1126', '1122', '47', '1622906356-3846-1', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:19:16', '41', '2021-06-05 17:20:17', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1127', '1122', '47', '1622906374-4752-1', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:19:34', '41', '2021-06-05 17:20:17', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1128', '1021', '45', 'flour', '1', '2021-06-08 21:48:08', '41', '2021-06-05 17:20:17', '41', '2021-06-05 17:20:17', '21', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1129', '1021', '45', 'water', '1', '2021-06-07 23:33:10', '41', '2021-06-05 17:20:17', '41', '2021-06-05 17:20:17', '22', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1130', '1027', '48', 'milliliter', '1', '2021-06-08 22:01:46', '41', '2021-06-05 17:20:17', '41', '2021-06-05 17:20:17', '7', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1131', '1021', '45', 'sugar', '1', '2021-06-05 17:20:17', '41', '2021-06-05 17:20:17', '41', '2021-06-05 17:20:17', '23', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1132', '1021', '45', 'olive-oil', '1', '2021-06-05 17:20:17', '41', '2021-06-05 17:20:17', '41', '2021-06-05 17:20:17', '24', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1146', '1120', '50', '1622906750-989-1', '1', '2021-06-07 23:32:10', '41', '2021-06-05 17:25:50', '41', '2021-06-05 17:39:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1133', '1119', '52', '1622906428-9302-1', '1', '2021-06-06 11:46:05', '41', '2021-06-05 17:20:28', '41', '2021-06-05 17:25:30', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1134', '1022', '2', 'for-page-1133', '17', '2021-06-05 17:20:28', '41', '2021-06-05 17:20:28', '41', '2021-06-05 17:20:28', '4', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1135', '1134', '47', '1622906578-3696-1', '1', '2021-06-05 18:10:05', '41', '2021-06-05 17:22:58', '41', '2021-06-05 17:25:30', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1136', '1134', '47', '1622906591-1627-1', '1', '2021-06-05 18:10:05', '41', '2021-06-05 17:23:11', '41', '2021-06-05 17:25:30', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1137', '1134', '47', '1622906610-3059-1', '1', '2021-06-05 18:10:05', '41', '2021-06-05 17:23:30', '41', '2021-06-05 17:25:30', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1138', '1134', '47', '1622906655-7891-1', '1', '2021-06-06 11:26:38', '41', '2021-06-05 17:24:15', '41', '2021-06-05 17:25:30', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1139', '1134', '47', '1622906699-9445-1', '1', '2021-06-06 11:46:05', '41', '2021-06-05 17:24:59', '41', '2021-06-05 17:25:30', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1140', '1134', '47', '1622906708-0237-1', '1', '2021-06-06 11:26:38', '41', '2021-06-05 17:25:08', '41', '2021-06-05 17:25:30', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1141', '1021', '45', 'feta', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:25:30', '41', '2021-06-05 17:25:30', '25', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1142', '1027', '48', 'block', '1', '2021-06-08 22:02:02', '41', '2021-06-05 17:25:30', '41', '2021-06-05 17:25:30', '8', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1143', '1021', '45', 'gruyere', '1', '2021-06-05 17:25:30', '41', '2021-06-05 17:25:30', '41', '2021-06-05 17:25:30', '26', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1144', '1021', '45', 'spring-onion', '1', '2021-06-08 21:48:28', '41', '2021-06-05 17:25:30', '41', '2021-06-05 17:25:30', '27', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1145', '1021', '45', 'tomato', '1', '2021-06-08 21:49:08', '41', '2021-06-05 17:25:30', '41', '2021-06-05 17:25:30', '28', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1149', '1120', '50', '1622908586-5762-1', '1', '2021-06-06 11:26:38', '41', '2021-06-05 17:56:26', '41', '2021-06-05 18:10:05', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1147', '2', '2', 'fluency', '1', '2021-06-05 17:39:56', '41', '2021-06-05 17:39:56', '41', '2021-06-05 17:39:56', '7', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1148', '31', '5', 'fluency-translate', '1', '2021-06-05 17:39:56', '41', '2021-06-05 17:39:56', '41', '2021-06-05 17:39:56', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1150', '1134', '47', '1622908769-0753-1', '1', '2021-06-06 11:26:38', '41', '2021-06-05 17:59:29', '41', '2021-06-05 18:10:05', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1151', '1120', '50', '1622908946-2577-1', '1', '2021-06-05 19:39:46', '41', '2021-06-05 18:02:26', '41', '2021-06-05 18:10:05', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1152', '1120', '50', '1622909214-4758-1', '1', '2021-06-05 19:39:46', '41', '2021-06-05 18:06:54', '41', '2021-06-05 18:10:05', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1153', '1134', '47', '1622909421-7338-1', '1', '2021-06-06 11:26:38', '41', '2021-06-05 18:10:21', '41', '2021-06-05 18:10:59', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1154', '1134', '47', '1622909443-7835-1', '1', '2021-06-06 11:26:38', '41', '2021-06-05 18:10:43', '41', '2021-06-05 18:10:59', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1155', '1021', '45', 'sesame', '1', '2021-06-08 21:49:37', '41', '2021-06-05 18:10:59', '41', '2021-06-05 18:10:59', '29', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1156', '1021', '45', 'egg', '1', '2021-06-08 21:49:50', '41', '2021-06-05 18:10:59', '41', '2021-06-05 18:10:59', '30', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1157', '1032', '49', 'asian', '1', '2021-06-05 20:05:47', '41', '2021-06-05 20:05:47', '41', '2021-06-05 20:05:47', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1158', '1032', '49', 'quick', '1', '2021-06-05 20:06:18', '41', '2021-06-05 20:06:16', '41', '2021-06-05 20:06:16', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1159', '1134', '47', '1622971545-2966-1', '1', '2021-06-06 11:26:38', '41', '2021-06-06 11:25:45', '41', '2021-06-06 11:26:02', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1160', '1027', '48', 'pinch', '1', '2021-06-06 11:46:56', '41', '2021-06-06 11:46:05', '41', '2021-06-06 11:46:05', '9', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1161', '1023', '43', 'niter-kibbeh-ethiopian-spiced-butter', '1', '2021-06-07 09:59:42', '41', '2021-06-07 09:40:41', '41', '2021-06-07 09:48:35', '3', 'niter-kibbeh-beurre-epice-ethiopien', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1162', '1060', '2', 'for-page-1161', '17', '2021-06-07 09:40:41', '41', '2021-06-07 09:40:41', '41', '2021-06-07 09:40:41', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1163', '1036', '2', 'for-page-1161', '17', '2021-06-07 09:40:41', '41', '2021-06-07 09:40:41', '41', '2021-06-07 09:40:41', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1164', '1162', '52', '1623051828-8209-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:43:48', '41', '2021-06-07 09:48:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1165', '1022', '2', 'for-page-1164', '17', '2021-06-07 09:43:49', '41', '2021-06-07 09:43:49', '41', '2021-06-07 09:43:49', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1166', '1165', '47', '1623051838-0255-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:43:58', '41', '2021-06-07 09:48:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1167', '1165', '47', '1623051849-1557-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:44:09', '41', '2021-06-07 09:48:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1168', '1165', '47', '1623051897-4299-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:44:57', '41', '2021-06-07 09:48:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1169', '1165', '47', '1623051932-7418-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:45:32', '41', '2021-06-07 09:48:35', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1170', '1165', '47', '1623051960-1409-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:46:00', '41', '2021-06-07 09:48:35', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1171', '1165', '47', '1623051983-2469-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:46:23', '41', '2021-06-07 09:48:35', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1172', '1165', '47', '1623052007-106-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:46:47', '41', '2021-06-07 09:48:35', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1173', '1165', '47', '1623052040-2586-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:47:20', '41', '2021-06-07 09:48:35', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1174', '1165', '47', '1623052064-2728-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:47:44', '41', '2021-06-07 09:48:35', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1175', '1165', '47', '1623052084-1459-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:48:04', '41', '2021-06-07 09:48:35', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1176', '1165', '47', '1623052107-5413-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:48:27', '41', '2021-06-07 09:48:35', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1177', '1027', '48', 'thumb-length', '1', '2021-06-08 22:12:18', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1178', '1021', '45', 'cinnamon-stick', '1', '2021-06-07 23:32:59', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '31', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1179', '1027', '48', 'centimeter', '1', '2021-06-08 22:12:36', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '11', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1180', '1021', '45', 'whole-black-pepper', '1', '2021-06-08 21:50:03', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '32', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1181', '1021', '45', 'black-cardamom', '1', '2021-06-08 21:50:21', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '33', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1182', '1021', '45', 'clove-whole', '1', '2021-06-08 21:56:15', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '34', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1183', '1021', '45', 'fenugreek-seeds', '1', '2021-06-07 23:33:19', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '35', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1184', '1021', '45', 'coriander-seeds', '1', '2021-06-08 21:52:22', '41', '2021-06-07 09:48:35', '41', '2021-06-07 09:48:35', '36', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1185', '1165', '47', '1623052211-4474-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:50:11', '41', '2021-06-07 09:58:34', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1186', '1165', '47', '1623052272-1476-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:51:12', '41', '2021-06-07 09:58:34', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1187', '1165', '47', '1623052310-2981-1', '1', '2021-06-07 09:58:34', '41', '2021-06-07 09:51:50', '41', '2021-06-07 09:58:34', '15', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1188', '1163', '50', '1623052336-4143-1', '1', '2021-06-07 09:59:42', '41', '2021-06-07 09:52:16', '41', '2021-06-07 09:58:34', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1189', '1163', '50', '1623052441-6792-1', '1', '2021-06-07 09:59:42', '41', '2021-06-07 09:54:01', '41', '2021-06-07 09:58:34', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1190', '1163', '50', '1623052609-232-1', '1', '2021-06-07 09:59:42', '41', '2021-06-07 09:56:49', '41', '2021-06-07 09:58:34', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1191', '1021', '45', 'cumin-seeds', '1', '2021-06-08 21:56:28', '41', '2021-06-07 09:58:34', '41', '2021-06-07 09:58:34', '37', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1192', '1021', '45', 'oregano-dried', '1', '2021-06-08 21:57:53', '41', '2021-06-07 09:58:34', '41', '2021-06-07 09:58:34', '38', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1193', '1021', '45', 'nutmeg-ground', '1', '2021-06-08 21:58:56', '41', '2021-06-07 09:58:34', '41', '2021-06-07 09:58:34', '39', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1020`, `status1020`) VALUES('1194', '1021', '45', 'turmeric-ground', '1', '2021-06-07 23:33:29', '41', '2021-06-07 09:58:34', '41', '2021-06-07 09:58:34', '40', NULL, '0');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2021-06-04 10:32:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2021-06-04 10:33:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2021-06-04 10:33:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2021-06-04 10:33:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2021-06-04 10:36:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2021-06-04 10:36:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '2', '2021-06-04 10:38:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '1', '2021-06-04 10:42:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2021-06-04 10:45:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2021-06-04 10:45:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '2', '2021-06-04 12:20:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2021-06-04 10:49:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '1', '2021-06-04 10:49:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2021-06-04 10:50:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2021-06-04 10:50:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '1', '2021-06-04 10:52:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '1', '2021-06-04 10:54:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2021-06-04 10:54:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '1', '2021-06-04 10:54:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '1', '2021-06-04 11:11:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '2', '2021-06-04 11:30:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '2', '2021-06-04 11:31:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2021-06-04 11:32:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '2', '2021-06-04 11:33:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '2', '2021-06-04 11:34:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '2', '2021-06-04 11:35:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1068', '2', '2021-06-04 12:20:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1067', '2', '2021-06-04 12:20:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1066', '2', '2021-06-04 12:20:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1065', '2', '2021-06-04 12:19:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1064', '2', '2021-06-04 12:19:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1062', '2', '2021-06-04 12:19:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '1', '2021-06-04 11:38:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '1', '2021-06-04 11:38:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '1', '2021-06-04 11:38:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2021-06-04 11:38:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2021-06-04 11:39:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '1', '2021-06-04 11:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '1', '2021-06-04 11:40:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '1', '2021-06-04 11:40:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '1', '2021-06-04 11:46:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '1', '2021-06-04 11:51:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1070', '2', '2021-06-04 12:21:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1071', '1', '2021-06-04 13:10:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '2', '2021-06-04 13:10:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1076', '2', '2021-06-04 13:10:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1077', '1', '2021-06-04 13:11:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1078', '1', '2021-06-04 13:11:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1079', '1', '2021-06-04 13:11:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1080', '1', '2021-06-04 13:11:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1081', '2', '2021-06-04 13:11:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1082', '1', '2021-06-04 13:12:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1083', '2', '2021-06-04 13:12:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1084', '1', '2021-06-04 13:12:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1085', '1', '2021-06-04 13:12:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1086', '2', '2021-06-04 13:12:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1087', '1', '2021-06-04 13:13:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1088', '2', '2021-06-04 13:13:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1089', '2', '2021-06-04 13:13:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1090', '1', '2021-06-04 13:13:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1091', '1', '2021-06-04 13:13:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1092', '2', '2021-06-04 13:14:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1093', '1', '2021-06-04 13:14:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1094', '2', '2021-06-04 13:14:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1095', '1', '2021-06-04 13:15:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1096', '2', '2021-06-04 13:15:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1097', '2', '2021-06-04 13:15:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1098', '2', '2021-06-04 13:32:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1099', '1', '2021-06-04 13:21:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1101', '2', '2021-06-04 13:21:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1102', '1', '2021-06-04 13:21:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1103', '2', '2021-06-04 13:22:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1104', '1', '2021-06-04 13:22:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1105', '2', '2021-06-04 13:22:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1106', '2', '2021-06-04 13:22:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1107', '1', '2021-06-04 13:23:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1108', '1', '2021-06-04 13:23:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1109', '2', '2021-06-04 13:23:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1110', '2', '2021-06-04 13:25:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1111', '2', '2021-06-04 13:25:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1112', '2', '2021-06-04 13:26:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1113', '2', '2021-06-04 13:26:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1114', '1', '2021-06-04 13:27:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1115', '1', '2021-06-04 13:27:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1116', '1', '2021-06-04 13:32:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1118', '1', '2021-06-05 17:14:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1121', '2', '2021-06-05 17:17:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1123', '2', '2021-06-05 17:17:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1124', '2', '2021-06-05 17:18:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1125', '2', '2021-06-05 17:18:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1126', '2', '2021-06-05 17:19:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1127', '2', '2021-06-05 17:19:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1128', '1', '2021-06-05 17:20:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1129', '1', '2021-06-05 17:20:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1130', '1', '2021-06-05 17:20:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1131', '1', '2021-06-05 17:20:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1132', '1', '2021-06-05 17:20:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1133', '2', '2021-06-05 17:20:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1135', '2', '2021-06-05 17:22:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1136', '2', '2021-06-05 17:23:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1137', '2', '2021-06-05 17:23:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1138', '2', '2021-06-05 17:24:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1139', '2', '2021-06-05 17:24:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1140', '2', '2021-06-05 17:25:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1141', '1', '2021-06-05 17:25:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1142', '1', '2021-06-05 17:25:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1143', '1', '2021-06-05 17:25:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1144', '1', '2021-06-05 17:25:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1145', '1', '2021-06-05 17:25:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1146', '2', '2021-06-05 17:25:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1148', '2', '2021-06-05 17:39:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1149', '2', '2021-06-05 17:56:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1150', '2', '2021-06-05 17:59:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1151', '2', '2021-06-05 18:02:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1152', '2', '2021-06-05 18:06:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1153', '2', '2021-06-05 18:10:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1154', '2', '2021-06-05 18:10:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1155', '1', '2021-06-05 18:10:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1156', '1', '2021-06-05 18:10:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1157', '1', '2021-06-05 20:05:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1158', '1', '2021-06-05 20:06:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1159', '2', '2021-06-06 11:25:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1160', '1', '2021-06-06 11:46:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1161', '1', '2021-06-07 09:40:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1164', '2', '2021-06-07 09:43:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1166', '2', '2021-06-07 09:43:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1167', '2', '2021-06-07 09:44:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1168', '2', '2021-06-07 09:44:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1169', '2', '2021-06-07 09:45:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1170', '2', '2021-06-07 09:46:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1171', '2', '2021-06-07 09:46:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1172', '2', '2021-06-07 09:46:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1173', '2', '2021-06-07 09:47:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1174', '2', '2021-06-07 09:47:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1175', '2', '2021-06-07 09:48:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1176', '2', '2021-06-07 09:48:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1177', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1178', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1179', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1180', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1181', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1182', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1183', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1184', '1', '2021-06-07 09:48:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1185', '2', '2021-06-07 09:50:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1186', '2', '2021-06-07 09:51:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1187', '2', '2021-06-07 09:51:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1188', '2', '2021-06-07 09:52:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1189', '2', '2021-06-07 09:54:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1190', '2', '2021-06-07 09:56:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1191', '1', '2021-06-07 09:58:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1192', '1', '2021-06-07 09:58:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1193', '1', '2021-06-07 09:58:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1194', '1', '2021-06-07 09:58:34');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1015', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '22');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1022', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1022', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1037', '1036');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1060', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1060', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1061', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1061', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1061', '1060');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '1022');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1072', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1072', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1072', '1060');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1073', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1073', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1073', '1036');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1075', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1075', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1075', '1022');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1100', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1100', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1100', '1022');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1119', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1119', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1119', '1060');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1120', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1120', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1120', '1036');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1122', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1122', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1122', '1022');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1134', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1134', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1134', '1022');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1162', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1162', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1162', '1060');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1163', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1163', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1163', '1036');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1165', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1165', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1165', '1022');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1622561704,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1622981596,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622561704,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'recipe', '97', '0', '0', '{\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1623101746,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'language', '98', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1622795810}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'ingredient', '99', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622796080}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'collection', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622796104}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_ingredientList', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1622801865}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'unit', '102', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622796515}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'category', '103', '0', '0', '{\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1623224226,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'repeater_steps', '104', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1622798652}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'api', '105', '0', '0', '{\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1623081512,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'repeater_ingredientWrapper', '106', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1622801888}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'panier', '107', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622805666}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'panier-endpoint', '108', '0', '0', '{\"urlSegments\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1623183323,\"contentType\":\"json\",\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'field-image', '109', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1622905361}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":34,"numCreateTables":40,"numInserts":1275,"numSeconds":1}