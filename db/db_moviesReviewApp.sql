-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2018 at 05:52 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_moviesReviewApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(17, 'Adventure'),
(18, 'Animation'),
(19, 'Biography'),
(20, 'Comedy'),
(21, 'Crime'),
(22, 'Drama'),
(23, 'Family'),
(24, 'Fantasy'),
(25, 'History'),
(26, 'Mystery'),
(27, 'Romance'),
(28, 'Sci-Fi'),
(29, 'Thriller'),
(30, 'War'),
(31, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'godfather.jpg', 'The Godfather', '1972', '2h 55m', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'godfather.mp4', 'March 24, 1972'),
(2, 'braveheart.jpg', 'Braveheart', '1995', '2h 58m', 'When his secret bride is executed for assaulting an English soldier who tried to rape her, Sir William Wallace begins a revolt against King Edward I of England.', 'braveheart.mp4', 'May 24, 1995'),
(3, 'intothewild.jpg', 'Into the Wild', '2007', '2h 28m', 'After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.', 'intothewild.mp4', 'October 19, 2007'),
(4, 'wakinglife.jpg', 'Waking Life', '2001', '1h 39m', 'A man shuffles through a dream meeting various people and discussing the meanings and purposes of the universe.', 'wakinglife.mp4', 'November 16, 2001'),
(5, 'deadpoetssociety.jpg', 'Dead Poets Society', '1989', '2h 8min', 'English teacher John Keating inspires his students to look at poetry with a different perspective of authentic knowledge and feelings.', 'deadpoetssociety.mp4', 'June 9, 1989'),
(6, 'cuckoosnest.jpg', 'One Flew Over the Cuckoo\'s Nest', '1975', '2h 13m', 'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.', 'cuckoosnest.mp4', 'November 19, 1975'),
(7, 'requiem.jpg', 'Requiem for a Dream', '2000', '1h 42m', 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.', 'requiem.mp4', 'December 15, 2000'),
(8, 'shawshank.jpg', 'The Shawshank Redemption', '1994', '2h 22m', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'shawshank.mp4', 'October 14, 1994'),
(9, 'pulpfiction.jpg', 'Pulp Fiction', '1994', '2h 34m', 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'pulpfiction.mp4', 'October 14, 1994'),
(10, 'lifeofbrian.jpg', 'Life of Brian', '1979', '1h 34m', 'Born on the original Christmas in the stable next door to Jesus, Brian of Nazareth spends his life being mistaken for a messiah.', 'lifeofbrian.mp4', 'August 17, 1979'),
(11, 'goonies.jpg', 'The Goonies', '1985', '1h 54m', 'In order to save their home from foreclosure, a group of misfits set out to find a pirate\'s ancient valuable treasure.', 'goonies.mp4', 'June 7, 1985'),
(12, 'dogville.jpg', 'Dogville', '2004', '2h 58m', 'A woman on the run from the mob is reluctantly accepted in a small Colorado town. In exchange, she agrees to work for them. As a search visits the town, she finds out that their support has a price. Yet her dangerous secret is never far away.', 'dogville.mp4', 'April 23, 2004'),
(13, 'lifeisbeautiful.jpg', 'Life is Beautiful', '1997', '1h 56m', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 'lifeisbeautiful.mp4', 'February 12, 1997'),
(14, 'monstersinc.jpg', 'Monsters Inc', '2001', '1h 32m', 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.', 'monstersinc.mp4', 'November 2, 2001'),
(15, 'fightclub.jpg', 'Fight Club', '1999', '2h 19m', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soapmaker, forming an underground fight club that evolves into something much, much more.', 'fightclub.mp4', 'October 15, 1999'),
(16, 'goodnight.jpg', 'Good Night and Good Luck', '2005', '1h 33m', 'Broadcast journalist Edward R. Murrow looks to bring down Senator Joseph McCarthy.', 'goodnight.mp4', 'November 4, 2005'),
(17, 'memento.jpg', 'Memento', '2000', '1h 53m', 'A man juggles searching for his wife\'s murderer and keeping his short-term memory loss from being an obstacle.', 'memento.mp4', 'May 25, 2000'),
(18, 'revolutionaryroad.jpg', 'Revolutionary Road', '2008', '1h 59m', 'A young couple living in a Connecticut suburb during the mid-1950s struggle to come to terms with their personal problems while trying to raise their two children.', 'revolutionaryroad.mp4', 'January 23, 2008'),
(19, 'lordoftherings.jpg', 'The Lord of the Rings: The Fellowship of the Ring', '2001', '2h 58m', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'lordoftherings.mp4', 'December 19, 2001'),
(20, 'clockworkorange.jpg', 'A Clockwork Orange', '1971', '2h 16m', 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn\'t go as planned.', 'clockworkorange.mp4', 'February 2, 1971'),
(21, 'bigfish.jpg', 'Big Fish', '2004', '2h 5m', 'A frustrated son tries to determine the fact from fiction in his dying father\'s life.', 'bigfish.jpg', 'January 9, 2004'),
(22, 'unforgiven.jpg', 'Unforgiven', '1992', '2h 10m', 'Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner and a young man.', 'unforgiven.mp4', 'August 7, 1992'),
(23, 'straightstory.jpg', 'The Straight Story', '1999', '1h 52m', 'An old man makes a long journey by lawnmower to mend his relationship with an ill brother.', 'straightstory.mp4', 'November 3, 1999'),
(24, 'marymax.jpg', 'Mary and Max', '2009', '1h 32m', 'A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.', 'marymax.mp4', 'April 9, 2009'),
(25, '12angrymen.jpg', '12 Angry Men', '1957', '1h 36m', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', '12angrymen.mp4', 'April 1, 1957');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 23, 1),
(38, 26, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_level` int(2) NOT NULL,
  `user_ip` varchar(50) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_level`, `user_ip`) VALUES
(2, 'Carolyn12', 'Carolyn', 'Fanshawe', 'c_larocque@fanshaweonline.ca', NULL, 2, '::1'),
(3, 'Test', 'Test1', 'Testpassword', 'test', NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
