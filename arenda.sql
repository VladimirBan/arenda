-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 31 2023 г., 13:23
-- Версия сервера: 5.7.33
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `arenda`
--

-- --------------------------------------------------------

--
-- Структура таблицы `arenda`
--

CREATE TABLE `arenda` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_tool` int(11) NOT NULL,
  `date_st` date NOT NULL,
  `date_fn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `arenda`
--

INSERT INTO `arenda` (`id`, `id_client`, `id_tool`, `date_st`, `date_fn`) VALUES
(1, 6, 2, '2023-04-01', '2023-04-05'),
(3, 5, 5, '2023-03-09', '2023-03-15'),
(4, 2, 6, '2023-05-24', '2023-05-27'),
(5, 1, 9, '2023-05-09', '2023-05-18');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `contacts` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `full_name`, `date`, `contacts`) VALUES
(1, 'Василовский Дмитрий Петрович ', '2023-05-03', '+7953353212'),
(2, 'Петров Григорий Валерьевич', '2023-05-12', '+89364675324'),
(5, 'Гуськова Инна Аркадьевна', '2023-05-09', '+37360314444'),
(6, 'Гладыш Василий Кузьмич', '2023-05-06', '+950514443');

-- --------------------------------------------------------

--
-- Структура таблицы `tools_eqv`
--

CREATE TABLE `tools_eqv` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price_day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tools_eqv`
--

INSERT INTO `tools_eqv` (`id`, `name`, `price_day`) VALUES
(1, 'Бензопила', '2500'),
(2, 'Топор ', '700'),
(5, 'Болгарка', '1500'),
(6, 'Набор отвёрток', '800'),
(9, 'Строительные леса', '1000'),
(10, 'Электро-лобзик ', '1200');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `arenda`
--
ALTER TABLE `arenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_tool` (`id_tool`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tools_eqv`
--
ALTER TABLE `tools_eqv`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `arenda`
--
ALTER TABLE `arenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tools_eqv`
--
ALTER TABLE `tools_eqv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `arenda`
--
ALTER TABLE `arenda`
  ADD CONSTRAINT `arenda_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `arenda_ibfk_2` FOREIGN KEY (`id_tool`) REFERENCES `tools_eqv` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
