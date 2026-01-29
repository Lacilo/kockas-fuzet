-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Jan 29. 08:21
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kockas-fuzet`
--
CREATE DATABASE IF NOT EXISTS `kockas-fuzet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `kockas-fuzet`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szamla`
--

CREATE TABLE IF NOT EXISTS `szamla` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SzolgaltatasAzon` int(11) NOT NULL,
  `SzolgaltatoRovid` varchar(32) NOT NULL,
  `Tol` date NOT NULL,
  `Osszeg` int(11) NOT NULL,
  `Hatarido` date NOT NULL,
  `Befizetve` date DEFAULT NULL,
  `Megjegyzes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `SzolgaltatasAzon` (`SzolgaltatasAzon`),
  KEY `SzolgaltatoRovid` (`SzolgaltatoRovid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `szamla`
--

INSERT INTO `szamla` (`Id`, `SzolgaltatasAzon`, `SzolgaltatoRovid`, `Tol`, `Osszeg`, `Hatarido`, `Befizetve`, `Megjegyzes`) VALUES
(1, 1, 'NVM next', '2025-11-01', 9525, '2025-12-14', '2025-12-06', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szolgaltatas`
--

CREATE TABLE IF NOT EXISTS `szolgaltatas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nev` varchar(256) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `szolgaltatas`
--

INSERT INTO `szolgaltatas` (`Id`, `Nev`) VALUES
(1, 'földgáz\r\n');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szolgaltato`
--

CREATE TABLE IF NOT EXISTS `szolgaltato` (
  `RovidNev` varchar(32) NOT NULL,
  `Nev` varchar(256) NOT NULL,
  `UgyfelSzolgalat` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`RovidNev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `szolgaltato`
--

INSERT INTO `szolgaltato` (`RovidNev`, `Nev`, `UgyfelSzolgalat`) VALUES
('NVM next', 'MVM Next Energiakereskedelem\r\n', '3530 Miskolc, Arany János utca 6-8\r\n');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `szamla`
--
ALTER TABLE `szamla`
  ADD CONSTRAINT `szamla_ibfk_1` FOREIGN KEY (`SzolgaltatasAzon`) REFERENCES `szolgaltatas` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `szamla_ibfk_2` FOREIGN KEY (`SzolgaltatoRovid`) REFERENCES `szolgaltato` (`RovidNev`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
