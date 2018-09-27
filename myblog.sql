-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 27 2018 г., 00:38
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comments` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `postid`, `email`, `name`, `comments`) VALUES
(1, 1, 'exs01@gm.com', 'ex01', 'ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 ex01 '),
(3, 1, 'exs02@gm.com', 'exs02', 'exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 exs02 '),
(6, 3, 'CommentPost03@gm.com', 'CommentNamePost03', 'CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 '),
(7, 3, 'CommentPost03@gm.com', 'CommentNamePost03', 'CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 CommentPost03 '),
(8, 4, 'CommentPost05@gm.com', 'CommentNamePost05', 'CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 CommentPost05 '),
(12, 6, 'CommentPost09@gm.com', 'CommentNamePost09', 'CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 CommentPost09 '),
(14, 1, 'exs08@gm.com', 'exs08', 'exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 exs08 ');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`) VALUES
(1, 'Post #01', '<p>Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum</p>\r\n<p>Amore invote avore invote avore invote avore invote avore invote avore invote avore invote avore invote avore invote avore invote avore invote avore invote avore invote</p>'),
(3, 'Post #03', 'Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 Post #03 '),
(4, 'Post #05', 'Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 Post #05 '),
(6, 'Post #09', 'Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 Post #09 ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'xxxxxxxx', 'xxxxxxxx', 'xxxxxxxx@m.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
