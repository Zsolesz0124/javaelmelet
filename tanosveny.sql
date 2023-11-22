-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jan 21. 21:25
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tanosveny`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `username` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `pass` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `role` varchar(40) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `np`
--

CREATE TABLE `np` (
  `parkid` int(11) NOT NULL,
  `parknev` varchar(80) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `np`
--

INSERT INTO `np` (`parkid`, `parknev`) VALUES
(1, 'Aggteleki Nemzeti Park Igazgatóság'),
(2, 'Balaton-felvidéki Nemzeti Park Igazgatóság'),
(3, 'Bükki Nemzeti Park Igazgatóság'),
(4, 'Duna-Dráva Nemzeti Park Igazgatóság'),
(5, 'Duna-Ipoly Nemzeti Park Igazgatóság'),
(6, 'Fertő-Hanság Nemzeti Park Igazgatóság'),
(7, 'Hortobágyi Nemzeti Park Igazgatóság'),
(8, 'Kiskunsági Nemzeti Park Igazgatóság'),
(9, 'Körös-Maros Nemzeti Park Igazgatóság'),
(10, 'Őrségi Nemzeti Park Igazgatóság'),
(250, 'Testese');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepules`
--

CREATE TABLE `telepules` (
  `telid` int(11) NOT NULL,
  `telnev` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `npid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `telepules`
--

INSERT INTO `telepules` (`telid`, `telnev`, `npid`) VALUES
(1, 'Abaliget', 4),
(2, 'Ágasegyháza', 8),
(3, 'Aggtelek', 1),
(4, 'Apaj', 8),
(5, 'Ásotthalom', 8),
(6, 'Babócsa', 4),
(7, 'Bakonybél', 2),
(8, 'Balatonederics', 2),
(9, 'Balatonmagyaród', 2),
(10, 'Barcs', 4),
(11, 'Bélapátfalva', 3),
(12, 'Berettyóújfalu', 7),
(13, 'Biharugra', 9),
(14, 'Budapest', 5),
(15, 'Bugac', 8),
(16, 'Bükkszentkereszt', 3),
(17, 'Cégénydányád', 7),
(18, 'Celldömölk', 10),
(19, 'Csáfordjánosfa', 6),
(20, 'Csákvár', 5),
(21, 'Császártöltés', 8),
(22, 'Cserépfalu', 3),
(23, 'Cserkút', 4),
(24, 'Csopak', 2),
(25, 'Dejtár', 5),
(26, 'Dévaványa', 9),
(27, 'Drégelypalánk', 5),
(28, 'Dunapataj', 8),
(29, 'Dunaremete', 6),
(30, 'Esztergom', 5),
(31, 'Farmos', 5),
(32, 'Felsőtárkány', 3),
(33, 'Fertőrákos', 6),
(34, 'Fót', 5),
(35, 'Fülöpháza', 8),
(36, 'Fülöpszállás', 8),
(37, 'Gánt', 5),
(38, 'Garadna', 3),
(39, 'Gyékényes', 4),
(40, 'Gyöngyös', 3),
(41, 'Győr', 6),
(42, 'Hollókő', 3),
(43, 'Hortobágy', 7),
(44, 'Ipolytarnóc', 3),
(45, 'Izsák', 8),
(46, 'Jósvafő', 1),
(47, 'Kaposvár', 4),
(48, 'Kecskemét', 8),
(49, 'Kékkút', 2),
(50, 'Kercaszomor', 10),
(51, 'Kisapáti', 2),
(52, 'Kisszentmárton', 4),
(53, 'Kölked', 4),
(54, 'Kőszeg', 10),
(55, 'Kunadacs', 8),
(56, 'Lakitelek', 8),
(57, 'Magyaregregy', 4),
(58, 'Magyarszombatfa', 10),
(59, 'Matty', 4),
(60, 'Miskolc', 3),
(61, 'Mohács', 4),
(62, 'Mórahalom', 8),
(63, 'Nagykovácsi', 5),
(64, 'Nagykőrös', 5),
(65, 'Óbánya', 4),
(66, 'Ócsa', 5),
(67, 'Old', 4),
(68, 'Orfű', 4),
(69, 'Orgovány', 8),
(70, 'Osli', 6),
(71, 'Őriszentpéter', 10),
(72, 'Őrtilos', 4),
(73, 'Paks', 4),
(74, 'Pálmonostora', 8),
(75, 'Pannonhalma', 6),
(76, 'Parád', 3),
(77, 'Pécs', 4),
(78, 'Perkupa', 1),
(79, 'Pilisszentiván', 5),
(80, 'Poroszló', 7),
(81, 'Pörböly', 4),
(82, 'Ravazd', 6),
(83, 'Salgótarján', 3),
(84, 'Sámsonháza', 3),
(85, 'Sarród', 6),
(86, 'Somlójenő', 2),
(87, 'Szabadkígyós', 9),
(88, 'Szalafő', 10),
(89, 'Szarvas', 9),
(90, 'Szarvaskő', 3),
(91, 'Szatymaz', 8),
(92, 'Szeghalom', 9),
(93, 'Szekszárd', 5),
(94, 'Szeremle', 4),
(95, 'Szigliget', 2),
(96, 'Szilvásvárad', 3),
(97, 'Szögliget', 1),
(98, 'Tarpa', 7),
(99, 'Tihany', 2),
(100, 'Tiszaalpár', 8),
(101, 'Tiszafüred', 7),
(102, 'Tiszalúc', 3),
(103, 'Tokaj', 1),
(104, 'Vámospércs', 7),
(105, 'Villány', 4),
(106, 'Vízvár', 4),
(250, 'Testtel', 10),
(256, 'asfgasfTEST', 10);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ut`
--

CREATE TABLE `ut` (
  `utid` int(11) NOT NULL,
  `utnev` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `hossz` double NOT NULL,
  `allomas` int(11) NOT NULL,
  `ido` double NOT NULL,
  `vezetes` tinyint(1) NOT NULL,
  `telepulesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ut`
--

INSERT INTO `ut` (`utid`, `utnev`, `hossz`, `allomas`, `ido`, `vezetes`, `telepulesid`) VALUES
(1, 'Anna-ligeti tanösvény', 2, 8, 1.5, 1, 89),
(2, 'Apródok útja tanösvény', 7.2, 8, 3, 1, 27),
(3, 'Aqua Colun tanösvény', 3.5, 5, 2, 1, 45),
(4, 'Árpád fejedelem tanösvény', 3, 11, 2, 1, 100),
(5, 'Ártéri tanösvény', 0.5, 4, 0.5, 1, 106),
(6, 'Babócsai Basa-kert tanösvény', 1, 2, 1, 1, 6),
(7, 'Baradla tanösvény', 7.5, 18, 3, 1, 3),
(8, 'Bárányfoki tanösvény', 2.1, 6, 1, 1, 93),
(9, 'Báránypirosító tanösvény', 1.6, 5, 1.6, 1, 35),
(10, 'Barát-réti tanösvény', 6.5, 4, 3, 1, 32),
(11, 'Barcsi Borókás tanösvény', 2, 4, 1, 1, 10),
(12, 'Bazaltorgonák tanösvény', 4, 7, 2, 1, 51),
(13, 'Bél-kői tanösvény', 5, 7, 2.5, 1, 11),
(14, 'Bihari-sík tanösvény', 7.2, 20, 5.2, 1, 12),
(15, 'Bodrogzugi vízitúra tanösvény', 5, 3, 2, 0, 103),
(16, 'Bódva-völgyi tanösvény', 2.5, 7, 1, 0, 78),
(17, 'Boróka tanösvény', 2.9, 5, 1.5, 1, 15),
(18, 'Boros-Dráva tanösvény', 1, 2, 0.5, 1, 67),
(19, 'Boroszlán tanösvény', 7, 8, 3, 1, 7),
(20, 'Boszorkány-kő geológiai tanösvény', 0.4, 13, 0.5, 1, 83),
(21, 'Bőköz tanösvény', 4, 6, 1.5, 1, 52),
(22, 'Bölömbika tanösvény', 3, 6, 1.5, 1, 62),
(23, 'Búbos vöcsök tanösvény', 1.5, 13, 1.5, 0, 9),
(24, 'Buda-hegyi tanösvény', 2, 8, 3, 1, 84),
(25, 'Cankó tanösvény', 1, 9, 1.5, 1, 36),
(26, 'Cégénydányádi Kastélypark tanösvény', 1.5, 19, 1, 0, 17),
(27, 'Chernel-kerti tanösvény', 0.5, 0, 0.5, 0, 54),
(28, 'Cserépfalui Ördögtorony tanösvény', 10, 20, 4.5, 1, 22),
(29, 'Csipak tanösvény', 3, 9, 1.5, 1, 62),
(30, 'Csodarét tanösvény', 4, 10, 2, 1, 5),
(31, 'Csomoros-sziget tanösvény', 0.7, 10, 1, 1, 10),
(32, 'Csörgőalma tanösvény', 0, 1, 0.5, 1, 71),
(33, 'Denevér tanösvény', 5, 13, 3, 1, 1),
(34, 'Erdei tanösvény', 2.7, 6, 2, 1, 15),
(35, 'Eresztvényi kőbányák', 2.5, 6, 1, 1, 83),
(36, 'Erzsébet-sziget tanösvény', 3, 2, 1.5, 1, 6),
(37, 'Fekete harkály tanösvény', 5, 13, 3, 1, 47),
(38, 'Felsőszeri tanösvény', 1.7, 6, 1, 1, 88),
(39, 'Fóti-Somlyó tanösvény', 3.5, 11, 3, 1, 34),
(40, 'Földtani tanösvény', 2, 13, 1.5, 1, 37),
(41, 'Fürge cselle tanösvény', 3.2, 8, 1.5, 1, 50),
(42, 'Fürkész ösvény', 2, 12, 1.5, 1, 46),
(43, 'Górési tanösvény', 11, 5, 3, 1, 101),
(44, 'Halásztelki tanösvény', 3, 10, 1.5, 1, 89),
(45, 'Hankovszky-liget tanösvény', 0.35, 8, 0.5, 1, 48),
(46, 'Hany Istók tanösvény', 5, 7, 2, 0, 70),
(47, 'Haraszt-hegyi tanösvény', 3.5, 7, 3, 1, 20),
(48, 'Holt-Rába tanösvény', 6, 5, 2, 0, 41),
(49, 'Ilona-völgyi geológiai tanösvény', 6.5, 9, 2.5, 1, 76),
(50, 'Ipolytarnóc - Biológiai tanösvény', 6, 13, 1.25, 1, 44),
(51, 'Ipolytarnóc - Borókás-árok geológiai tanösvény', 0.8, 7, 1, 1, 44),
(52, 'Ipolytarnóc - Kőszikla tanösvény', 0.9, 20, 1.5, 1, 44),
(53, 'Ipolytarnóc - Kőzetpark', 0.7, 20, 0.5, 1, 44),
(54, 'Jági tanösvény', 3.5, 6, 2, 1, 79),
(55, 'Jakab-hegyi tanösvény', 8, 10, 2, 1, 23),
(56, 'Jávorkúti tanösvény', 3, 4, 1, 1, 38),
(57, 'Jónásrészi tanösvény', 5, 11, 3, 1, 104),
(58, 'Káli-medence túrahálózat', 25, 79, 8, 1, 49),
(59, 'Kamon-kő tanösvény', 6, 9, 3, 1, 95),
(60, 'Kékbegy tanösvény', 0.21, 3, 0.5, 1, 31),
(61, 'Kékmoszat tanösvény', 2.4, 12, 2, 1, 28),
(62, 'Kesznyéteni TK agrár-környezetgazdálkodási tanösvény', 4.8, 6, 3.5, 1, 102),
(63, 'Kígyósi tanösvény', 5, 4, 2, 0, 87),
(64, 'Kismély-völgyi tanösvény', 1, 5, 1, 1, 77),
(65, 'Kisvátyoni tanösvény', 8, 6, 3, 0, 13),
(66, 'Kitaibel tanösvény', 3, 9, 2, 1, 86),
(67, 'Kontyvirág tanösvény', 2.4, 6, 1.5, 1, 56),
(68, 'Kormorános-erdő tanösvény', 2, 6, 0.5, 1, 59),
(69, 'Kosbor tanösvény', 1.7, 5, 1.5, 1, 55),
(70, 'Kő-közi tanösvény', 0.8, 5, 1, 1, 32),
(71, 'Kőpark tanösvény', 0.2, 0, 0.5, 1, 14),
(72, 'Körtike tanösvény', 6.2, 11, 2.5, 1, 88),
(73, 'Kövi benge tanösvény', 0.3, 20, 1, 0, 33),
(74, 'Lóczy gejzír-sétaút', 18, 15, 6, 1, 99),
(75, 'Madarak és fák útja', 1, 5, 1, 1, 15),
(76, 'Madárvédelmi tanösvény', 0.3, 8, 0.5, 1, 54),
(77, 'Mágor-pusztai tanösvény', 0.5, 5, 1.5, 0, 92),
(78, 'Magyar-bányai kőpark', 0.15, 13, 0.5, 1, 83),
(79, 'Mérus-erdő tanösvény', 1, 1, 0.5, 1, 6),
(80, 'Millenniumi természetismereti és erdészeti bemutató sétaút', 2.5, 20, 1, 1, 96),
(81, 'Nagymező - Kis-kőháti-zsomboly tanösvény', 3, 3, 1, 1, 96),
(82, 'Nagypartosi tanösvény', 2.5, 6, 1, 1, 53),
(83, 'Nagy-Szénás tanösvény', 2.1, 7, 1.5, 1, 63),
(84, 'Nyéki-Holt-Duna tanösvény', 2.2, 6, 1, 1, 81),
(85, 'Óbányai Pro Silva tanösvény', 2, 5, 0.5, 1, 65),
(86, 'Olasz-kapui tanösvény', 7.2, 6, 3, 1, 96),
(87, 'Orfűi Vízfő tanösvény', 1, 4, 0.5, 1, 68),
(88, 'Öregtavi tanösvény', 25, 18, 6, 1, 43),
(89, 'Őrtilosi Dráva-ártér tanösvény', 2, 0, 0.75, 1, 72),
(90, 'Paksi Ürge-mező tanösvény', 4, 11, 1, 1, 73),
(91, 'Pálfája tanösvény', 1.8, 10, 1.5, 1, 64),
(92, 'Páskom legelő tanösvény', 3, 6, 2, 1, 25),
(93, 'Pele apó ösvénye', 8.5, 38, 5, 1, 8),
(94, 'Pele körút', 0.8, 10, 1, 1, 24),
(95, 'Pimpó tanösvény', 5.8, 6, 4, 1, 69),
(96, 'Poszáta tanösvény', 2, 8, 1.5, 1, 45),
(97, 'Ravazd-Sokorópátkai tanösvény', 15, 3, 3, 0, 82),
(98, 'Réce tanösvény', 1, 5, 0.5, 1, 4),
(99, 'Réhelyi tanösvény', 1.5, 8, 1, 1, 26),
(100, 'Rejtek - Répáshuta tanösvény', 9, 12, 4.5, 1, 16),
(101, 'Rekettye tanösvény', 2.3, 6, 2, 1, 2),
(102, 'Rezgőnyár tanösvény', 0.3, 7, 0.5, 1, 71),
(103, 'Ság-hegy élővilága', 0.2, 13, 0.2, 1, 18),
(104, 'Ság-hegyi geológiai tanösvény', 1, 18, 0.5, 1, 18),
(105, 'Salgó - Somoskő vára tanösvény', 3.5, 6, 1, 1, 83),
(106, 'Sárgaliliom tanösvény', 6.2, 11, 2.5, 1, 58),
(107, 'Sár-hegyi természetismereti tanösvény', 7, 12, 3, 1, 40),
(108, 'Sas-hegy tanösvény', 0.85, 7, 1, 1, 14),
(109, 'Sáskajárás sétaút', 0.8, 8, 1, 1, 15),
(110, 'Selyem-réti tanösvény', 1.5, 6, 2, 1, 66),
(111, 'Sirály tanösvény', 2, 5, 1.5, 1, 91),
(112, 'Sóvirág tanösvény', 0.5, 0, 1, 1, 31),
(113, 'Sötét-völgyi tanösvény', 4.3, 9, 2, 1, 93),
(114, 'Strázsa-hegyi tanösvény', 1.2, 7, 1.5, 1, 30),
(115, 'Szádvár tanösvény', 4.5, 12, 3, 1, 97),
(116, 'Szalajka-völgyi természetvédelmi bemutatóösvény', 4.2, 10, 2.5, 1, 96),
(117, 'Szala menti tanösvény', 3.8, 9, 1.5, 1, 71),
(118, 'Szálkahalmi tanösvény', 1.1, 5, 1, 1, 43),
(119, 'Szarvaskői geológiai tanösvény', 8.8, 11, 3.5, 1, 90),
(120, 'Szeremlei-Holt-Duna tanösvény', 2.4, 6, 1, 1, 94),
(121, 'Szigetközi Ökoturisztikai Bemutató Útvonal', 18, 12, 2, 0, 29),
(122, 'Sziki őszirózsa tanösvény', 4, 10, 2, 0, 85),
(123, 'Szilvás-kői geológiai tanösvény', 3.5, 12, 1.5, 1, 83),
(124, 'Szinva tanösvény', 4, 6, 3, 1, 60),
(125, 'Szomoróczi tanösvény', 3, 6, 1, 1, 50),
(126, 'Tanösvény a Turjánban', 1.2, 9, 1, 1, 66),
(127, 'Tarpai Szőlő-hegy tanösvény', 3, 6, 2, 0, 98),
(128, 'Templom-hegyi tanösvény', 2, 6, 1, 1, 105),
(129, 'Pannonhalmi arborétum', 1.5, 3, 0.3, 0, 75),
(130, 'Tisza-tavi vízi sétány és tanösvény', 1.5, 4, 2, 1, 80),
(131, 'Tohonya-Kuriszlán tanösvény II. útvonal', 9, 25, 6, 1, 46),
(132, 'Tohonya-Kuriszlán tanösvény I. útvonal', 4.5, 12, 2.5, 1, 46),
(133, 'Tőzike tanösvény', 3, 5, 1, 1, 19),
(134, 'Tüskés-réti tanösvény', 1, 4, 1, 1, 77),
(135, 'Újmohácsi tanösvény', 3.1, 7, 1, 1, 61),
(136, 'Üde rétek tanösvény', 3, 5, 2, 1, 10),
(137, 'Várdomb tanösvény', 0.3, 6, 0.5, 0, 100),
(138, 'Vár-hegyi tanösvény', 10, 6, 4.5, 1, 32),
(139, 'Vártúra ösvény', 1.2, 0, 1, 1, 42),
(140, 'Vár-völgyi földtani tanösvény', 3, 10, 1, 1, 57),
(141, 'Vasút-oldali túraútvonal', 10, 1, 2.5, 1, 39),
(142, 'Vizi Rence Túraútvonal', 6, 0, 3, 1, 33),
(143, 'Vöcsök tanösvény', 3.2, 7, 2.5, 1, 74),
(144, 'Vörös-mocsár tanösvény', 2.5, 2, 2, 1, 21);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `np`
--
ALTER TABLE `np`
  ADD PRIMARY KEY (`parkid`);

--
-- A tábla indexei `telepules`
--
ALTER TABLE `telepules`
  ADD PRIMARY KEY (`telid`),
  ADD KEY `npid` (`npid`);

--
-- A tábla indexei `ut`
--
ALTER TABLE `ut`
  ADD PRIMARY KEY (`utid`),
  ADD KEY `telepulesid` (`telepulesid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `np`
--
ALTER TABLE `np`
  MODIFY `parkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT a táblához `telepules`
--
ALTER TABLE `telepules`
  MODIFY `telid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT a táblához `ut`
--
ALTER TABLE `ut`
  MODIFY `utid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `telepules`
--
ALTER TABLE `telepules`
  ADD CONSTRAINT `fk_np_id` FOREIGN KEY (`npid`) REFERENCES `np` (`parkid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `ut`
--
ALTER TABLE `ut`
  ADD CONSTRAINT `ut_ibfk_1` FOREIGN KEY (`telepulesid`) REFERENCES `telepules` (`telid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
