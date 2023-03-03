-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Mar 2023, 16:06
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `1pro`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista`
--

CREATE TABLE `lista` (
  `ID` int(11) NOT NULL,
  `Nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `Czy_wykonane` tinyint(1) NOT NULL,
  `Termin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `lista`
--

INSERT INTO `lista` (`ID`, `Nazwa`, `Czy_wykonane`, `Termin`) VALUES
(3, 'odrabianie lekcji', 1, 6),
(4, 'spanie', 0, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `lista`
--
ALTER TABLE `lista`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
