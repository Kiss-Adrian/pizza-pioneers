-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 14. 11:13
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
-- Adatbázis: `pizza_pioneers`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bejelentkezés`
--

CREATE TABLE `bejelentkezés` (
  `Uid` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `iranyitoszam` int(11) NOT NULL,
  `telepules` varchar(255) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `bejelentkezés`
--

INSERT INTO `bejelentkezés` (`Uid`, `createdAt`, `updatedAt`, `username`, `password`, `iranyitoszam`, `telepules`, `cim`, `email`) VALUES
(28, '2025-03-04 09:57:07', '2025-03-04 09:57:07', 'lll', '1', 1, '1', '1', 'aa@aa'),
(29, '2025-03-04 10:02:11', '2025-03-04 10:02:11', 'h', 'h', 0, 'h', 'h', 'h@h'),
(30, '2025-03-04 10:16:58', '2025-03-04 10:16:58', 'asd', '123', 6300, 'Kalocsa', 'Martinovics 20', 'asd@asd'),
(31, '2025-03-05 09:51:53', '2025-03-05 09:51:53', 'test', 'test123', 6300, 'test', 'test 123', 'test@test.hu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `Rid` int(11) NOT NULL,
  `Uid` int(11) NOT NULL,
  `Tid` int(11) NOT NULL,
  `Tdb` int(11) NOT NULL,
  `ossz` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termékek`
--

CREATE TABLE `termékek` (
  `Tid` int(11) NOT NULL,
  `Tar` int(11) NOT NULL,
  `Tnev` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `termékek`
--

INSERT INTO `termékek` (`Tid`, `Tar`, `Tnev`, `createdAt`, `updatedAt`) VALUES
(19, 2499, 'Carbonara Pizza (35cm)', '2025-02-12 09:57:08', '2025-02-12 09:57:08'),
(20, 2499, 'Gyros Pizza (35cm)', '2025-02-12 09:57:08', '2025-02-12 09:57:08'),
(21, 2499, 'Hawaii Pizza (35cm)', '2025-02-12 09:57:08', '2025-02-12 09:57:08'),
(22, 2499, 'Margareta Pizza (35cm)', '2025-02-12 09:57:08', '2025-02-12 09:57:08'),
(23, 2499, 'Songoku Pizza (35cm)', '2025-02-12 09:57:08', '2025-02-12 09:57:08'),
(24, 2499, 'Sonkas Pizza (35cm)', '2025-02-12 09:57:08', '2025-02-12 09:57:08');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bejelentkezés`
--
ALTER TABLE `bejelentkezés`
  ADD PRIMARY KEY (`Uid`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`Rid`);

--
-- A tábla indexei `termékek`
--
ALTER TABLE `termékek`
  ADD PRIMARY KEY (`Tid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `bejelentkezés`
--
ALTER TABLE `bejelentkezés`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT a táblához `termékek`
--
ALTER TABLE `termékek`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
