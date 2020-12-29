-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 29, 2020 at 10:06 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'admin', 'shaon@gmail.com', 1, '2020-12-11 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Bangladesh', 'News of all over Bangladesh', '2020-12-11 13:00:58', '0000-00-00 00:00:00', 1),
(3, 'International', 'News of the world', '2020-12-11 13:01:18', '0000-00-00 00:00:00', 1),
(4, 'Sports', 'News of sports', '2020-12-11 13:01:34', '0000-00-00 00:00:00', 1),
(5, 'Business', 'News of the business world', '2020-12-11 13:01:50', '0000-00-00 00:00:00', 1),
(6, 'Entertainment ', 'News of the entertainment world', '2020-12-11 13:02:12', '0000-00-00 00:00:00', 1),
(7, 'Lifestyle', 'News of lifestyle', '2020-12-11 13:02:25', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(1, 'Three Bangladeshi COVID-19 vaccines on WHO global list', 2, 3, 'Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello \r\nHello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello \r\nHello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello \r\nHello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello ', '2020-12-11 13:12:42', '2020-12-11 14:30:43', 1, 'Three-Bangladeshi-COVID-19-vaccines-on-WHO-global-list', 'f101010e4d36a5123e7473df16b658ac.jpg'),
(2, 'Bangabandhu T20 Cup: Chattogram cement top spot', 4, 1, 'Gazi Group Chattogram beat Gemcon Khulna in a dramatic way by three wickets on Tuesday to cement the top place in the points table of the ongoing Bangabandhu T20 Cup 2020, reports UNB.\r\nChattogram needed to score nine runs in the last over bowled by Al Amin Hossain. Mustafizur Rahman and Shamsur Rahman were at the crease to complete the task.\r\nMustafizur failed to score from the first ball but hit the second one for a four. There were two singles and one leg-bye in the next three balls. Chattogram needed two runs out of the last ball of the match. Shamsur smashed Al Amin for six to seal the game by three wickets.\r\nShamsur remained unbeaten at 45 off 30 balls with five fours and one six while Mustafizur was also unbeaten at five off four balls.\r\nChattogram ended up on 162 for seven in 20 overs while chasing the target of 158.\r\nBefore Shamsurâ€™s late heroics, Soumya Sarkar (19), Mahmudul Hasan Joy (24), Mohammad Mithun (23) contributed well to ensure a win.\r\nFor Khulna, Shakib Al Hasan and Shuvagata Hom took two wickets each while Mashrafe Bin Mortaza, Al Amin and Hasan Mahmud took one wicket each.\r\nEarlier, Chattogram lost the toss and sent Khulna to bat first. They posted a fighting total of 157 runs. Despite losing the wickets on a regular basis, Khulna managed to post a 150-plus score riding on the bat of Shuvagata Hom who scored 32 off 14 with six fours and one six and remained unbeaten.\r\nJahurul Islam (26), Zakir Hasan (15), Shakib Al Hasan (15), Imrul Kayes (24), Mahmudullah Riyad (26) also contributed well with the bat.\r\nFor Chattogram, Shoriful Islam bagged three wickets conceding 34 runs while Mustafizur took two and Mosaddek Hossain and Ziaur Rahman took one wicket each.\r\nWith this game, Mashrafe Bin Mortaza, Bangladeshâ€™s former captain, made a comeback to the competitive cricket after a long hiatus of nine months forced by COVID-19. Upon his return, Mashrafe bagged one wicket conceding 28 runs in four overs.\r\nDespite losing this game, Khulna, like Chatt', '2020-12-11 14:25:13', NULL, 1, 'Bangabandhu-T20-Cup:-Chattogram-cement-top-spot', '4ab1baccb95c19ac5ea1b83007ad4e86jpeg'),
(3, 'Disney Has Some Major Marvel And Star Wars Projects Planned!', 6, 4, 'Fans of Disney, the Marvel Cinematic Universe, and Star Wars had an embarrassment of riches to pour over yesterday. During the 2020 Investor Day presentation for The Walt Disney Company, creative forces Kevin Feige, Kathleen Kennedy, and more, were on hand to tease out much of whatâ€™s coming in the next few years. A lot of their focus is on Disney+ shows, as well as Pixar efforts that will be headed to the service, but they saved some room for feature talk, as well. Both properties have some high profile movie announcements that were made, exciting the fan base. Suffice it to say, the film world, once it gets back to normal, will have plenty to look forward to in the years to come.\r\n\r\nFirst, the Marvel news was largely centered on the new series coming to Disney+, as youâ€™ll see below, but Kevin Fiege and company also announced their Fantastic Four movie is in development, with Spider-Man franchise helmer Jon Watts taking the charge. That was probably their most surprising news, alongside announcing the title for the third Ant-Man film, which will be called Ant-Man and the Wasp: Quantumania. More nextâ€¦\r\n\r\nHereâ€™s a bit from the official Marvel write up of the news:\r\n\r\nThe Marvel Cinematic Universe is expanding in huge, exciting ways! Revealed during The Walt Disney Companyâ€™s 2020 Investor Day presentation by Kevin Feige, president, Marvel Studios, and chief creative officer, Marvel, get ready for new series coming to Disney+, along with brand new films in the near future.\r\n\r\nâ€œThe Cinematic Universe weaves storylines, heroes and villains across 23 feature films to date,â€ Fiege said. â€œAnd with Disney+, weâ€™re able to extend this way of storytelling to a new format â€” creating series that are connected to our theatrical releases, making the MCU more immersive than ever.â€\r\n\r\nPhase 4 of the MCU kicks off with Marvel Studiosâ€™ WandaVision, premiering on Disney+ on January 15, and continues throughout 2021 with new films â€” like Marvel Studiosâ€™ Black W', '2020-12-12 11:56:09', NULL, 1, 'Disney-Has-Some-Major-Marvel-And-Star-Wars-Projects-Planned!', '0e33deed119dadeaf06d4aca59c30582.jpg'),
(4, '6 hacks to eat smart and cut down food waste', 7, 5, 'Few days to the year-end festivities and wed all be drowned in festive cheer and great food! The celebrations however are usually accompanied by a lot of wastage. We can be more mindful about our relationship with food by incorporating these small changes into our daily life to reduce food wastage:\r\n\r\nBuy Smart: Stick to your list of needs and avoid impulse buying. Donâ€™t buy in bulk, but make frequent trips to the grocery store instead and coincide it with your jogging schedule or biking time so the trips become fun! Thisâ€™ll ensure you only buy what you really need.\r\n\r\nStore Smart: Proper storage of foods will help keep them at their peak for longer. Not all foods need refrigeration - Potatoes, tomatoes, garlic, cucumbers and onions should be stored at room temperature. Some fruits and vegetables produce ethylene gas that causes early ripening (or rotting) of foods that are sensitive to ethylene. These should always be stored separately. Foods that produce ethylene gas include bananas, avocados, tomatoes, cantaloupes, peaches, pears, green onions. Store them in separate bags and away from ethylene-sensitive foods like potatoes, apples, leafy greens, berries and peppers to avoid premature spoilage.\r\nRefrigerate Smart: Stock your fridge using the FIFO method (First in, first out). Place newly bought foods behind older ones. For example when you buy a new carton of berries, place the newer package behind the old one. This helps ensure that older food gets used, not wasted. Also when youâ€™ve kept leftovers in the fridge, keep them in glass containers so you donâ€™t forget about them.\r\n\r\nSmoothie Smart: While the stems, ends and peels of many items may not be appetizing in their whole form, adding them to a smoothie is a way to reap their nutritional benefits. Spinach leaves and stems that turn soggy after just a day or two in the kitchen, can be stored in the freezer and be used to make a super healthy smoothie.\r\nUpcycle Smart: Get innovative with leftovers and tur', '2020-12-12 12:04:39', NULL, 1, '6-hacks-to-eat-smart-and-cut-down-food-waste', 'ce4c7c9e16315ae853eef646ec470000.jpg'),
(5, 'sdf', 6, 4, 'sdf', '2020-12-29 08:51:01', '2020-12-29 08:59:37', 0, 'sdf', '70de593d7d75bfbc95dad2ceb644a616.jpg'),
(6, 'sfd', 6, 4, 'dfg', '2020-12-29 08:58:44', '2020-12-29 08:59:33', 0, 'sfd', '4a9e831d9326e2803c4c92ebf07537c3.jpg'),
(7, 'sdfd', 6, 4, 'A wisdom tooth or third molar is one of the three molars per quadrant of the human dentition. It is the most posterior of the three. The age at which wisdom teeth come through (erupt) is variable,[1] but this generally occurs between late teens and early twenties.[2] Most adults have four wisdom teeth, one in each of the four quadrants, but it is possible to have none, fewer, or more, in which case the extras are called supernumerary teeth. Wisdom teeth may get stuck (impacted)[3] against other teeth if there is not enough space for them to come through normally. While the impaction does not cause movement of other teeth,[4] it can cause tooth decay if oral hygiene becomes more difficult. Wisdom teeth which are partially erupted through the gum may also cause inflammation[3] and infection in the surrounding gum tissues, termed pericoronitis. Some more conservative treatments, such as operculectomies, may be fitting for some cases, yet wisdom teeth are commonly extracted as treatment for these problems, many times before these problems even occur. Some oppose this prophylactic removal of disease-free impacted wisdom teeth, including among them the National Institute for Health and Care Excellence in the UK.[4][5][6]\r\nVariation\r\nAgenesis of wisdom teeth differs by population, ranging from practically zero in Aboriginal Tasmanians to nearly 100% in indigenous Mexicans[7] (see research paper with world map showing prevalence). The difference is related to the PAX9, and MSX1 gene (and perhaps other genes).[8][9][10][11]', '2020-12-29 09:05:33', NULL, 1, 'sdfd', '70de593d7d75bfbc95dad2ceb644a616.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(1, 4, 'Cricket', 'Cricket news', '2020-12-11 13:02:52', '2020-12-11 14:24:05', 1),
(2, 4, 'Football', 'News of the football', '2020-12-11 13:03:09', '0000-00-00 00:00:00', 1),
(3, 2, 'Covid News of the Country', 'It has the covid news of our country', '2020-12-11 13:07:17', '0000-00-00 00:00:00', 1),
(4, 6, 'Hollywood', 'News about hollywood', '2020-12-12 11:55:09', '0000-00-00 00:00:00', 1),
(5, 7, 'Fooding', 'News about fooding', '2020-12-12 12:03:43', '2020-12-12 12:05:03', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
