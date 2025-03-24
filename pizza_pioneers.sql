-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 24. 10:25
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
-- Tábla szerkezet ehhez a táblához `bejelentkezes`
--

CREATE TABLE `bejelentkezes` (
  `Uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `iranyitoszam` int(11) NOT NULL,
  `telepules` varchar(255) NOT NULL,
  `cim` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `bejelentkezes`
--

INSERT INTO `bejelentkezes` (`Uid`, `username`, `password`, `email`, `iranyitoszam`, `telepules`, `cim`, `createdAt`, `updatedAt`) VALUES
(1, 'teszt', 'teszt123', 'teszt@teszt.hu', 6300, 'Kalocsa', 'Marinovics, u. 2', '2025-03-24 09:21:11', '2025-03-24 09:21:11');

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

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`Rid`, `Uid`, `Tid`, `Tdb`, `ossz`, `createdAt`, `updatedAt`) VALUES
(77, 1, 1, 1, 2499, '2025-03-24 09:21:47', '2025-03-24 09:21:47'),
(78, 1, 2, 1, 2499, '2025-03-24 09:21:47', '2025-03-24 09:21:47'),
(79, 1, 3, 1, 2499, '2025-03-24 09:21:47', '2025-03-24 09:21:47'),
(80, 1, 4, 1, 2499, '2025-03-24 09:21:47', '2025-03-24 09:21:47'),
(81, 1, 5, 1, 2499, '2025-03-24 09:21:47', '2025-03-24 09:21:47'),
(82, 1, 6, 1, 2499, '2025-03-24 09:21:47', '2025-03-24 09:21:47');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `Tid` int(11) NOT NULL,
  `Tar` int(11) NOT NULL,
  `Tnev` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`Tid`, `Tar`, `Tnev`, `createdAt`, `updatedAt`) VALUES
(1, 2499, 'Carbonara Pizza (35cm)', '2025-03-24 09:19:43', '2025-03-24 09:19:43'),
(2, 2499, 'Gyros Pizza (35cm)', '2025-03-24 09:19:43', '2025-03-24 09:19:43'),
(3, 2499, 'Hawaii Pizza (35cm)', '2025-03-24 09:19:43', '2025-03-24 09:19:43'),
(4, 2499, 'Margareta Pizza (35cm)', '2025-03-24 09:19:43', '2025-03-24 09:19:43'),
(5, 2499, 'Songoku Pizza (35cm)', '2025-03-24 09:19:43', '2025-03-24 09:19:43'),
(6, 2499, 'Sonkas Pizza (35cm)', '2025-03-24 09:19:43', '2025-03-24 09:19:43');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bejelentkezes`
--
ALTER TABLE `bejelentkezes`
  ADD PRIMARY KEY (`Uid`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`Rid`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`Tid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `bejelentkezes`
--
ALTER TABLE `bejelentkezes`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `Rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
