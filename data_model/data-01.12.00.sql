SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO `datagrid` (`short_description`) VALUES 
	('asset_list'),
	('asset_model_list'),
	('inventory_model_list'),
	('company_list'),
	('contact_list'),
	('category_list'),
	('manufacturer_list'),
	('receipt_list'),
	('shipment_list'),
	('asset_audit_list'),
	('inventory_audit_list'),
	('location_list'),
	('user_list');

INSERT INTO `notification` (`notification_id`, `short_description`, `long_description`, `criteria`, `frequency`, `enabled_flag`) VALUES
	(1,'Overdue Receipt','Send notification when a receipt is overdue','10','once',false);

INSERT INTO `location` (`location_id`, `short_description`, `long_description`, `enabled_flag`, `created_by`, `creation_date`, `modified_by`, `modified_date`) VALUES
	(1,'Checked Out',NULL,'1',NULL,NULL,NULL,NULL),
	(2,'Shipped',NULL,'1',NULL,NULL,NULL,NULL),
	(3,'Taken Out',NULL,'1',NULL,NULL,NULL,NULL),
	(4,'New Inventory',NULL,'1',NULL,NULL,NULL,NULL),
	(5,'To Be Received',NULL,'1',NULL,NULL,NULL,NULL),
	(6,'Archived',NULL,'1',NULL,NULL,NULL,NULL);

INSERT INTO `transaction_type` VALUES
	(1,'Move',1,1),
	(2,'Check In',1,0),
	(3,'Check Out',1,0),
	(4,'Restock',0,1),
	(5,'Take Out',0,1),
	(6,'Ship',1,1),
	(7,'Receive',1,1),
	(8,'Reserve',1,0),
	(9,'Unreserve',1,0),
	(10,'Archive',1,0),
	(11,'Unarchive',1,0);

INSERT INTO `user_account` (`user_account_id`, `first_name`, `last_name`, `username`, `password_hash`, `active_flag`, `admin_flag`, `role_id`, `created_by`, `creation_date`) VALUES
	(1,'Admin','User','admin','d033e22ae348aeb5660fc2140aec35850c4da997',1,1,1,1,NOW());

INSERT INTO `custom_field_qtype` (`name`) VALUES
	('text'),
	('select'),
	('textarea');

INSERT INTO `entity_qtype` (`entity_qtype_id`, `name`) VALUES
	(1,'Asset'),
	(2,'Inventory'),
	(3,'AssetInventory'),
	(4,'AssetModel'),
	(5,'Manufacturer'),
	(6,'Category'),
	(7,'Company'),
	(8,'Contact'),
	(9,'Address'),
	(10,'Shipment'),
	(11,'Receipt');

INSERT INTO `country` (`country_id`, `short_description`, `abbreviation`, `state_flag`, `province_flag`) VALUES
	(1,'Afghanistan','AF',NULL,NULL),
	(2,'Albania','AL',NULL,NULL),
	(3,'Algeria','DZ',NULL,NULL),
	(4,'American Samoa','AS',NULL,NULL),
	(5,'Andorra','AD',NULL,NULL),
	(6,'Angola','AO',NULL,NULL),
	(7,'Anguilla','AI',NULL,NULL),
	(8,'Antigua','AG',NULL,NULL),
	(9,'Argentina','AR',NULL,NULL),
	(10,'Armenia','AM',NULL,NULL),
	(11,'Aruba','AW',NULL,NULL),
	(12,'Australia','AU',NULL,NULL),
	(13,'Austria','AT',NULL,NULL),
	(14,'Azerbaijan','AZ',NULL,NULL),
	(15,'Bahamas','BS',NULL,NULL),
	(16,'Bahrain','BH',NULL,NULL),
	(17,'Bangladesh','BD',NULL,NULL),
	(18,'Barbados','BB',NULL,NULL),
	(19,'Barbuda(Antigua)','AG',NULL,NULL),
	(20,'Belarus','BY',NULL,NULL),
	(21,'Belgium','BE',NULL,NULL),
	(22,'Benin','BJ',NULL,NULL),
	(23,'Bermuda','BM',NULL,NULL),
	(24,'Belize','BZ',NULL,NULL),
	(25,'Bolivia','BO',NULL,NULL),
	(26,'Bonaire(Netherlands Antilles)','AN',NULL,NULL),
	(27,'Bosnia-Herzegovina','BA',NULL,NULL),
	(28,'Botswana','BW',NULL,NULL),
	(29,'Bhutan','BT',NULL,NULL),
	(30,'Brazil','BR',NULL,NULL),
	(31,'British Virgin Islands','VG',NULL,NULL),
	(32,'Brunei','BN',NULL,NULL),
	(33,'Bulgaria','BG',NULL,NULL),
	(34,'Burkina Faso','BF',NULL,NULL),
	(35,'Burundi','BI',NULL,NULL),
	(36,'Cambodia','KH',NULL,NULL),
	(37,'Cameroon','CM',NULL,NULL),
	(38,'Canada','CA',NULL,1),
	(39,'Canary Islands(Spain)','ES',NULL,NULL),
	(40,'Cape Verde','CV',NULL,NULL),
	(41,'Chad','TD',NULL,NULL),
	(42,'Channel Islands(United Kingdom)','GB',NULL,NULL),
	(43,'Cayman Islands','KY',NULL,NULL),
	(44,'Chile','CL',NULL,NULL),
	(45,'China','CN',NULL,NULL),
	(46,'Colombia','CO',NULL,NULL),
	(47,'Congo','CG',NULL,NULL),
	(48,'Congo, Democratic Republic of','CD',NULL,NULL),
	(49,'Cook Islands','CK',NULL,NULL),
	(50,'Croatia','HR',NULL,NULL),
	(51,'Curacao(Netherlands Antilles)','AN',NULL,NULL),
	(52,'Costa Rica','CR',NULL,NULL),
	(53,'Cyprus','CY',NULL,NULL),
	(54,'Czech Republic','CZ',NULL,NULL),
	(55,'Denmark','DK',NULL,NULL),
	(56,'Djibouti','DJ',NULL,NULL),
	(57,'Dominica','DM',NULL,NULL),
	(58,'Dominican Republic','DO',NULL,NULL),
	(59,'East Timor','TP',NULL,NULL),
	(60,'Ecuador','EC',NULL,NULL),
	(61,'Egypt','EG',NULL,NULL),
	(62,'El Salvador','SV',NULL,NULL),
	(63,'England(United Kingdom)','GB',NULL,NULL),
	(64,'Equatorial Guinea','GQ',NULL,NULL),
	(65,'Eritrea','ER',NULL,NULL),
	(66,'Estonia','EE',NULL,NULL),
	(67,'Ethiopia','ET',NULL,NULL),
	(68,'Faeroe Islands','FO',NULL,NULL),
	(69,'Fiji','FJ',NULL,NULL),
	(70,'Finland','FI',NULL,NULL),
	(71,'France','FR',NULL,NULL),
	(72,'French Guiana','GF',NULL,NULL),
	(73,'French Polynesia','PF',NULL,NULL),
	(74,'Gabon','GA',NULL,NULL),
	(75,'Gambia','GM',NULL,NULL),
	(76,'Georgia','GE',NULL,NULL),
	(77,'Germany','DE',NULL,NULL),
	(78,'Ghana','GH',NULL,NULL),
	(79,'Gibraltar','GI',NULL,NULL),
	(80,'Grand Cayman(Cayman Islands)','KY',NULL,NULL),
	(81,'Great Britain(United Kingdom)','GB',NULL,NULL),
	(82,'Great Thatch Islands(British Virgin Islands)','VG',NULL,NULL),
	(83,'Great Tobago Islands(British Virgin Islands)','VG',NULL,NULL),
	(84,'Greece','GR',NULL,NULL),
	(85,'Greenland','GL',NULL,NULL),
	(86,'Grenada','GD',NULL,NULL),
	(87,'Guadeloupe','GP',NULL,NULL),
	(88,'Guam','GU',NULL,NULL),
	(89,'Guatemala','GT',NULL,NULL),
	(90,'Guinea','GN',NULL,NULL),
	(91,'Guyana','GY',NULL,NULL),
	(92,'Haiti','HT',NULL,NULL),
	(93,'Holland(Netherlands)','NL',NULL,NULL),
	(94,'Honduras','HS',NULL,NULL),
	(95,'Hong Kong','HK',NULL,NULL),
	(96,'Hungary','HU',NULL,NULL),
	(97,'Iceland','IS',NULL,NULL),
	(98,'India','IN',NULL,NULL),
	(99,'Indonesia','ID',NULL,NULL),
	(100,'Iraq','IQ',NULL,NULL),
	(101,'Ireland','IE',NULL,NULL),
	(102,'Israel','IL',NULL,NULL),
	(103,'Italy','IT',NULL,NULL),
	(104,'Ivory Coast','CI',NULL,NULL),
	(105,'Jamaica','JM',NULL,NULL),
	(106,'Japan','JP',NULL,NULL),
	(107,'Jordan','JO',NULL,NULL),
	(108,'Jost Van Dyke Islands(British Virgin Islands)','VG',NULL,NULL),
	(109,'Kazakhstan','KZ',NULL,NULL),
	(110,'Kenya','KE',NULL,NULL),
	(111,'Kiribati','KI',NULL,NULL),
	(112,'Kuwait','KW',NULL,NULL),
	(113,'Kyrgyzstan','KG',NULL,NULL),
	(114,'Laos','LA',NULL,NULL),
	(115,'Latvia','LV',NULL,NULL),
	(116,'Lebanon','LB',NULL,NULL),
	(117,'Lesotho','LS',NULL,NULL),
	(118,'Liberia','LR',NULL,NULL),
	(119,'Libya','LY',NULL,NULL),
	(120,'Liechtenstein','LI',NULL,NULL),
	(121,'Lithuania','LT',NULL,NULL),
	(122,'Luxembourg','LU',NULL,NULL),
	(123,'Macau','MO',NULL,NULL),
	(124,'Macedonia','MK',NULL,NULL),
	(125,'Madagascar','MG',NULL,NULL),
	(126,'Malaysia','MY',NULL,NULL),
	(127,'Malawi','MW',NULL,NULL),
	(128,'Maldives','MV',NULL,NULL),
	(129,'Mali','ML',NULL,NULL),
	(130,'Malta','MT',NULL,NULL),
	(131,'Marshall Islands','MH',NULL,NULL),
	(132,'Martinique','MQ',NULL,NULL),
	(133,'Mauritania','MR',NULL,NULL),
	(134,'Mauritius','MU',NULL,NULL),
	(135,'Mexico','MX',1,NULL),
	(136,'Micronesia','FM',NULL,NULL),
	(137,'Moldova','MD',NULL,NULL),
	(138,'Monaco','MC',NULL,NULL),
	(139,'Mongolia','MN',NULL,NULL),
	(140,'Montserrat','MS',NULL,NULL),
	(141,'Morocco','MA',NULL,NULL),
	(142,'Mozambique','MZ',NULL,NULL),
	(143,'Nauru','NR',NULL,NULL),
	(144,'Namibia','NA',NULL,NULL),
	(145,'Nepal','NP',NULL,NULL),
	(146,'Netherlands','NL',NULL,NULL),
	(147,'Netherlands Antilles','AN',NULL,NULL),
	(148,'New Caledonia','NC',NULL,NULL),
	(149,'New Zealand','NZ',NULL,NULL),
	(150,'Nicaragua','NI',NULL,NULL),
	(151,'Niger','NE',NULL,NULL),
	(152,'Nigeria','NG',NULL,NULL),
	(153,'Niue','NU',NULL,NULL),
	(154,'Norman Island(British Virgin Islands)','VG',NULL,NULL),
	(155,'Northern Ireland(United Kingdom)','GB',NULL,NULL),
	(156,'Northern Mariana Islands','MP',NULL,NULL),
	(157,'Norway','NO',NULL,NULL),
	(158,'Oman','OM',NULL,NULL),
	(159,'Pakistan','PK',NULL,NULL),
	(160,'Paraguay','PY',NULL,NULL),
	(161,'Palau','PW',NULL,NULL),
	(162,'Palestine','PS',NULL,NULL),
	(163,'Panama','PA',NULL,NULL),
	(164,'Papua New Guinea','PG',NULL,NULL),
	(165,'Peru','PE',NULL,NULL),
	(166,'Philippines','PH',NULL,NULL),
	(167,'Poland','PL',NULL,NULL),
	(168,'Portugal','PT',NULL,NULL),
	(169,'Puerto Rico','PR',NULL,NULL),
	(170,'Qatar','QA',NULL,NULL),
	(171,'Reunion','RE',NULL,NULL),
	(172,'Romania','RO',NULL,NULL),
	(173,'Rota(Northern Mariana Islands)','MP',NULL,NULL),
	(174,'Russia','RU',NULL,NULL),
	(175,'Rwanda','RW',NULL,NULL),
	(176,'Saba(Netherlands Antilles)','AN',NULL,NULL),
	(177,'Saipan(Northern Mariana Islands)','MP',NULL,NULL),
	(178,'Samoa','WS',NULL,NULL),
	(179,'San Marino(Italy)','IT',NULL,NULL),
	(180,'Saudi Arabia','SA',NULL,NULL),
	(181,'Scotland(United Kingdom)','GB',NULL,NULL),
	(182,'Senegal','SN',NULL,NULL),
	(183,'Serbia and Montenegro','YU',NULL,NULL),
	(184,'Seychelles','SC',NULL,NULL),
	(185,'Singapore','SG',NULL,NULL),
	(186,'Slovak Republic','SK',NULL,NULL),
	(187,'Slovenia','SI',NULL,NULL),
	(188,'Solomon Islands','SB',NULL,NULL),
	(189,'South Africa','ZA',NULL,NULL),
	(190,'South Korea','KR',NULL,NULL),
	(191,'Spain','ES',NULL,NULL),
	(192,'Sri Lanka','LK',NULL,NULL),
	(193,'St. Barthelemy(Guadeloupe)','GP',NULL,NULL),
	(194,'St. Christopher(St. Kitts And Nevis)','KN',NULL,NULL),
	(195,'St. Croix Island(U S Virgin Islands)','VI',NULL,NULL),
	(196,'St. Eustatius(Netherlands Antilles)','AN',NULL,NULL),
	(197,'St. John(U S Virgin Islands)','VI',NULL,NULL),
	(198,'St. Kitts And Nevis','KN',NULL,NULL),
	(199,'St. Lucia','LC',NULL,NULL),
	(200,'St. Maarten(Netherlands Antilles)','AN',NULL,NULL),
	(201,'St. Thomas(U S Virgin Islands)','VI',NULL,NULL),
	(202,'St. Vincent','VC',NULL,NULL),
	(203,'Suriname','SR',NULL,NULL),
	(204,'Swaziland','SZ',NULL,NULL),
	(205,'Sweden','SE',NULL,NULL),
	(206,'Switzerland','CH',NULL,NULL),
	(207,'Syria','SY',NULL,NULL),
	(208,'Tahiti(French Polynesia)','PF',NULL,NULL),
	(209,'Taiwan','TW',NULL,NULL),
	(210,'Tanzania','TZ',NULL,NULL),
	(211,'Thailand','TH',NULL,NULL),
	(212,'Tinian(Northern Mariana Islands)','MP',NULL,NULL),
	(213,'Togo','TG',NULL,NULL),
	(214,'Tonga','TO',NULL,NULL),
	(215,'Tortola Island(British Virgin Islands)','VG',NULL,NULL),
	(216,'Trinidad \+ Tobago','TT',NULL,NULL),
	(217,'Tunisia','TN',NULL,NULL),
	(218,'Turkey','TR',NULL,NULL),
	(219,'Turkmenistan','TM',NULL,NULL),
	(220,'Turks And Caicos Islands','TC',NULL,NULL),
	(221,'Tuvalu','TV',NULL,NULL),
	(222,'United Arab Emirates','AE',NULL,NULL),
	(223,'U S Virgin Islands','VI',NULL,NULL),
	(224,'Uganda','UG',NULL,NULL),
	(225,'Ukraine','UA',NULL,NULL),
	(226,'Union Island(St. Vincent)','VC',NULL,NULL),
	(227,'United Kingdom','GB',NULL,NULL),
	(228,'United States','US',1,NULL),
	(229,'Uruguay','UY',NULL,NULL),
	(230,'Uzbekistan','UZ',NULL,NULL),
	(231,'Vanuatu','VU',NULL,NULL),
	(232,'Vatican City(Italy)','VA',NULL,NULL),
	(233,'Venezuela','VE',NULL,NULL),
	(234,'Vietnam','VN',NULL,NULL),
	(235,'Wales(United Kingdom)','GB',NULL,NULL),
	(236,'Wallis \+ Futuna Islands','WF',NULL,NULL),
	(237,'Yemen','YE',NULL,NULL),
	(238,'Zambia','ZM',NULL,NULL),
	(239,'Zimbabwe','ZW',NULL,NULL);

INSERT INTO `state_province` (`state_province_id`, `country_id`, `short_description`, `abbreviation`) VALUES
	(1,228,'Alabama','AL'),
	(2,228,'Alaska','AK'),
	(3,228,'Arizona','AZ'),
	(4,228,'Arkansas','AR'),
	(5,228,'California','CA'),
	(6,228,'Colorado','CO'),
	(7,228,'Connecticut','CT'),
	(8,228,'Delaware','DE'),
	(9,228,'District of Columbia','DC'),
	(10,228,'Florida','FL'),
	(11,228,'Georgia','GA'),
	(12,228,'Hawaii','HI'),
	(13,228,'Idaho','ID'),
	(14,228,'Illinois','IL'),
	(15,228,'Indiana','IN'),
	(16,228,'Iowa','IA'),
	(17,228,'Kansas','KS'),
	(18,228,'Kentucky','KY'),
	(19,228,'Louisiana','LA'),
	(20,228,'Maine','ME'),
	(21,228,'Maryland','MD'),
	(22,228,'Massachusetts','MA'),
	(23,228,'Michigan','MI'),
	(24,228,'Minnesota','MN'),
	(25,228,'Mississippi','MS'),
	(26,228,'Missouri','MO'),
	(27,228,'Montana','MT'),
	(28,228,'Nebraska','NE'),
	(29,228,'Nevada','NV'),
	(30,228,'New Hampshire','NH'),
	(31,228,'New Jersey','NJ'),
	(32,228,'New Mexico','NM'),
	(33,228,'New York','NY'),
	(34,228,'North Carolina','NC'),
	(35,228,'North Dakota','ND'),
	(36,228,'Ohio','OH'),
	(37,228,'Oklahoma','OK'),
	(38,228,'Oregon','OR'),
	(39,228,'Pennsylvania','PA'),
	(40,228,'Rhode Island','RI'),
	(41,228,'South Carolina','SC'),
	(42,228,'South Dakota','SD'),
	(43,228,'Tennessee','TN'),
	(44,228,'Texas','TX'),
	(45,228,'Utah','UT'),
	(46,228,'Vermont','VT'),
	(47,228,'Virginia','VA'),
	(48,228,'Washington','WA'),
	(49,228,'West Virginia','WV'),
	(50,228,'Wisconsin','WI'),
	(51,228,'Wyoming','WY'),
	(52,38,'Alberta','AB'),
	(53,38,'British Columbia','BC'),
	(54,38,'Manitoba','MB'),
	(55,38,'New Brunswick','NB'),
	(56,38,'Newfoundland','NF'),
	(57,38,'Northwest Territories / Nunavut','NT'),
	(58,38,'Nova Scotia','NS'),
	(59,38,'Ontario','ON'),
	(60,38,'Prince Edward Island','PE'),
	(61,38,'Quebec','PQ'),
	(62,38,'Saskatchewan','SK'),
	(63,38,'Yukon','YT'),
	(64,135,'Aguascalientes','AG'),
	(65,135,'Baja California Norte','BC'),
	(66,135,'Baja California Sur','BS'),
	(67,135,'Chihuahua','CH'),
	(68,135,'Colima','CL'),
	(69,135,'Campeche','CM'),
	(70,135,'Coahuila','CO'),
	(71,135,'Chiapas','CS'),
	(72,135,'Distrito Federal','DF'),
	(73,135,'Durango','DG'),
	(74,135,'Guerrero','GR'),
	(75,135,'Guanajuato','GT'),
	(76,135,'Hidalgo','HG'),
	(77,135,'Jalisco','JA'),
	(78,135,'Michoacan','MI'),
	(79,135,'Morelos','MO'),
	(80,135,'Estado de Mexico','MX'),
	(81,135,'Nayarit','NA'),
	(82,135,'Nuevo Leon','NL'),
	(83,135,'Oaxaca','OA'),
	(84,135,'Puebla','PU'),
	(85,135,'Quintana Roo','QR'),
	(86,135,'Queretaro','QT'),
	(87,135,'Sinaloa','SI'),
	(88,135,'San Luis Potosi','SL'),
	(89,135,'Sonora','SO'),
	(90,135,'Tabasco','TB'),
	(91,135,'Tlaxcala','TL'),
	(92,135,'Tamaulipas','TM'),
	(93,135,'Veracruz','VE'),
	(94,135,'Yucatan','YU'),
	(95,135,'Zacatecas','ZA');

INSERT INTO `courier` (`courier_id`, `short_description`, `active_flag`) VALUES
	(1,'FedEx',1);

INSERT INTO `package_type` (`short_description`, `courier_id`, `value`) VALUES
	('Other packaging',1,'01'),
	('FedEx Pak',1,'02'),
	('FedEx Box',1,'03'),
	('FedEx Tube',1,'04'),
	('FedEx Envelope',1,'06'),
	('FedEx 10kg Box',1,'15'),
	('FedEx 25kg Box',1,'25');

INSERT INTO `weight_unit` (`weight_unit_id`, `short_description`) VALUES
	(1,'LBS'),
	(2,'KGS');

INSERT INTO `length_unit` (`length_unit_id`, `short_description`) VALUES
	(1,'in'),
	(2,'cm');

INSERT INTO `currency_unit` (`currency_unit_id`, `short_description`, `symbol`) VALUES
	(1,'USD','\+#36;'),
	(2,'GBP','\+#163;'),
	(3,'EUR','\+#128;');

INSERT INTO `role` (`role_id`, `short_description`, `long_description`, `created_by`, `creation_date`) VALUES
	(1,'Administrator','Administrator account will access to everything',1,NOW());
            
INSERT INTO `module` (`module_id`, `short_description`) VALUES
	(1,'home'),
	(2,'assets'),
	(3,'inventory'),
	(4,'contacts'),
	(5,'shipping'),
	(6,'receiving'),
	(7,'reports');

INSERT INTO `role_module` (`role_module_id`, `role_id`, `module_id`, `access_flag`) VALUES
	(2,1,2,1),
	(3,1,3,1),
	(4,1,4,1),
	(5,1,5,1),
	(6,1,6,1),
	(7,1,7,1);

INSERT INTO `authorization` (`authorization_id`, `short_description`) VALUES
	(1,'view'),
	(2,'edit'),
	(3,'delete');

INSERT INTO `authorization_level` (`authorization_level_id`, `short_description`) VALUES
	(1,'all'),
	(2,'owner'),
	(3,'none');

INSERT INTO `role_module_authorization` (`role_module_authorization_id`, `role_module_id`, `authorization_id`, `authorization_level_id`) VALUES
	(4,2,1,1),
	(5,2,2,1),
	(6,2,3,1),
	(7,3,1,1),
	(8,3,2,1),
	(9,3,3,1),
	(10,4,1,1),
	(11,4,2,1),
	(12,4,3,1),
	(13,5,1,1),
	(14,5,2,1),
	(15,5,3,1),
	(16,6,1,1),
	(17,6,2,1),
	(18,6,3,1),
	(19,7,1,1),
	(20,7,2,1),
	(21,7,3,1);

INSERT INTO `role_entity_qtype_built_in_authorization` (`role_entity_built_in_id`, `role_id`, `entity_qtype_id`, `authorization_id`, `authorized_flag`, `created_by`, `creation_date`, `modified_by`, `modified_date`) VALUES
	(1, 1, 1, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(2, 1, 1, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(3, 1, 4, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(4, 1, 4, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(5, 1, 2, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(6, 1, 2, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(7, 1, 7, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(8, 1, 7, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(9, 1, 8, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(10, 1, 8, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(11, 1, 9, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(12, 1, 9, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(13, 1, 10, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(14, 1, 10, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(15, 1, 11, 1, 1, 1, '2008-07-11 22:14:47', NULL, NULL),
	(16, 1, 11, 2, 1, 1, '2008-07-11 22:14:47', NULL, NULL);

INSERT INTO `admin_setting` (`setting_id`,`short_description`,`value`) VALUES
	(1,'company_id',NULL),
	(2,'image_upload_prefix',NULL),
	(3,'fedex_gateway_URI',NULL),
	(4,'company_logo',NULL),
	(5,'packing_list_terms',NULL),
	(6,'packing_list_logo',NULL),
	(7,'min_asset_code',NULL),
	(8,'fedex_account_id',NULL),
	(9,'autodetect_tracking_numbers',NULL),
	(10,'custom_shipment_numbers',NULL),
	(11,'custom_receipt_numbers',NULL),
	(12,'receive_to_last_location',NULL),
	(13,'portable_pin_required','1'),
	(14,'user_limit',NULL),
	(15,'fedex_label_printer_type','1'),
	(16,'fedex_label_format_type','5'),
	(17,'fedex_thermal_printer_port','LPT1'),
	(18,'asset_limit',NULL),
	(19,'strict_checkin_policy','1'),
	(20,'search_results_per_page','20'),
	(21,'disable_logins',NULL),
	(22,'asset_tag_scale','1'),
	(23,'asset_tag_height','0'),
	(24,'check_out_to_other_users',NULL),
	(25,'check_out_to_contacts',NULL),
	(26,'due_date_required',NULL),
	(27,'reason_required',NULL),
	(28,'default_check_out_period','24');

INSERT INTO `fedex_service_type` (`fedex_service_type_id`, `short_description`, `value`) VALUES
	(1,'Express Priority Overnight','01'),
	(2,'Express Economy Two Day','03'),
	(3,'Express Standard Overnight','05'),
	(4,'Express First Overnight','06'),
	(5,'Express Saver','20'),
	(6,'FedEx Ground Service','92');

INSERT INTO `shortcut` (`module_id`, `authorization_id`, `transaction_type_id`, `short_description`, `link`, `image_path`, `entity_qtype_id`, `create_flag`) VALUES
        (2,2,NULL,'Create Asset Model','../assets/asset_model_edit.php','asset_model_create.png',4,1),
        (2,1,NULL,'Asset Models','../assets/asset_model_list.php','asset_model.png',4,0),
        (2,2,NULL,'Import Asset Models','../assets/asset_model_import.php','asset_model_import.png',4,1),
        (2,2,NULL,'Create Asset','../assets/asset_edit.php','asset_create.png',1,1),
        (2,1,NULL,'Assets','../assets/asset_list.php','asset.png',1,0),
        (2,2,NULL,'Import Assets','../assets/asset_import.php','asset_import.png',1,1),
        (2,2,1,'Move Assets','../assets/asset_edit.php?intTransactionTypeId=1', 'asset_move.png',1,0),
        (2,2,3,'Check Out Assets','../assets/asset_edit.php?intTransactionTypeId=3', 'asset_checkout.png',1,0),
        (2,2,2,'Check In Assets','../assets/asset_edit.php?intTransactionTypeId=2', 'asset_checkin.png',1,0),
        (2,2,8,'Reserve Assets','../assets/asset_edit.php?intTransactionTypeId=8', 'asset_reserve.png',1,0),
        (3,2,NULL,'Create Inventory','../inventory/inventory_edit.php','inventory_create.png',2,1),
        (3,1,NULL,'Inventory','../inventory/inventory_model_list.php','inventory.png',2,0),
        (3,2,1,'Move Inventory','../inventory/inventory_edit.php?intTransactionTypeId=1', 'inventory_move.png',2,0),
        (3,2,5,'Take Out Inventory','../inventory/inventory_edit.php?intTransactionTypeId=5', 'inventory_takeout.png',2,0),
        (3,2,4,'Restock Inventory','../inventory/inventory_edit.php?intTransactionTypeId=4', 'inventory_restock.png',2,0),
        (4,2,NULL,'Create Company','../contacts/company_edit.php','company_create.png',7,1),
        (4,1,NULL,'Companies','../contacts/company_list.php','company.png',7,0),
        (4,2,NULL,'Import Companies','../contacts/company_import.php','company_import.png',7,1),
        (4,2,NULL,'Create Contact','../contacts/contact_edit.php','contact_create.png',8,1),
        (4,1,NULL,'Contacts','../contacts/contact_list.php','contact.png',8,0),
        (4,2,NULL,'Import Contacts','../contacts/contact_import.php','contact_import.png',8,1),
        (5,2,NULL,'Schedule Shipment','../shipping/shipment_edit.php','shipment_schedule.png',10,1),
        (5,1,NULL,'Shipments','../shipping/shipment_list.php','shipment.png',10,0),
        (6,2,NULL,'Schedule Receipt','../receiving/receipt_edit.php','receipt_schedule.png',11,1),
        (6,1,NULL,'Receipts','../receiving/receipt_list.php','receipt.png',11,0),
        (7,1,NULL,'Asset Audit Reports','../reports/asset_audit_list.php','receipt.png',1,0),
        (7,1,NULL,'Inventory Audit Reports','../reports/inventory_audit_list.php','receipt.png',2,0),
        (7,1,NULL,'Asset Transaction Report','../reports/asset_transaction_report.php','asset.png',1,0),
        (2,2,10,'Archive Assets','../assets/asset_edit.php?intTransactionTypeId=10','asset_archive.png',1,0),
        (2,2,11,'Unarchive Assets','../assets/asset_edit.php?intTransactionTypeId=11','asset_unarchive.png',1,0);

SET FOREIGN_KEY_CHECKS = 1;
