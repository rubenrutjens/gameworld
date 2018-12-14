-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 14 dec 2018 om 14:03
-- Serverversie: 10.1.31-MariaDB
-- PHP-versie: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gamecategory`
--

CREATE TABLE `gamecategory` (
  `categoryID` int(5) NOT NULL,
  `categoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gamecategory`
--

INSERT INTO `gamecategory` (`categoryID`, `categoryName`) VALUES
(1, 'playstation'),
(2, 'xbox'),
(3, 'PC');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameId` int(11) NOT NULL,
  `gameTitle` varchar(100) NOT NULL,
  `gameDescription` text NOT NULL,
  `gamePrice` varchar(10) NOT NULL,
  `gameImage` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `addtocart` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDescription`, `gamePrice`, `gameImage`, `category_id`, `addtocart`) VALUES
(1, 'PC Black Ops 1', 'Description about Black Ops 1 for PC. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '24.95', 'PCblackops1.jpg', 3, ''),
(2, 'PC Black Ops 2', 'Description about Black Ops 2 for PC. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '29.95', 'PCblackops2.jpg', 3, ''),
(3, 'PC Black Ops Infinite Warfare', 'Description about Black Ops MW1 for PC. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '19.95', 'PCblackopsiw.jpg', 3, ''),
(4, 'PC Black Ops MW2', 'Description about Black Ops MW2 for PC. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '9.95', 'PCblackopsmw2.jpg', 3, ''),
(5, 'PC Black Ops MW3', 'Description about Black Ops MW3 for PC. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '1239.95', 'PCblackopsmw3.jpg', 3, ''),
(6, 'PC battlefield1942', 'Description about Battlefield for PC. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '44.95', 'PCbattlefield1942.jpg', 3, ''),
(7, 'Battlefield 1', 'Description about Battlefield 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '69.95', 'battlefield1.jpg', 1, ''),
(8, 'Battlefield 4', 'Description about Battlefield 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '84.95', 'battlefield4.jpg', 1, ''),
(9, 'Fortnite', 'Description about Fortnite. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '239.95', 'fortnite.jpg', 1, ''),
(10, 'Rocketleague', 'Description about Rocketleague. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '49.95', 'rocketleague.jpg', 1, ''),
(11, 'Paragon', 'Description about Paragon. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '5679.95', 'paragon.jpg', 1, ''),
(12, 'Escapist 2', 'Description about Escapist 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '419.95', 'escapist2.jpg', 1, ''),
(13, 'overwatch', 'Description about Overwatch. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '214.95', 'overwatch.jpg', 2, ''),
(14, 'Black Ops 3', 'Description about Black Ops 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '67.95', 'blackops3.jpg', 2, ''),
(15, 'Minecraft', 'Description about Minecraft. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '9.95', 'minecraft.jpg', 2, ''),
(16, 'Playerunknown Battleground', 'Description about Playerunknown Battleground. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '119.95', 'pubg.jpg', 2, ''),
(17, 'Little Big Planet', 'Description about Little Big Planet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '939.95', 'littlebigplanet.jpg', 2, ''),
(18, 'Horizon Zero Down', 'Description about Horizon Zero Dawn. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis pellentesque urna, id aliquet metus sodales sit amet. Proin mattis et elit ut pharetra. Morbi egestas libero eros, vel facilisis nunc euismod non. Nulla id ipsum sit amet mauris tincidunt commodo sit amet sed odio. Proin arcu neque, volutpat vitae tempor sed, eleifend vel enim.', '618.95', 'horizonzerodown.jpg', 2, '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  MODIFY `categoryID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
