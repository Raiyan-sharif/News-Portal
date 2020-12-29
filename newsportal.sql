-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 02:34 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

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
  `PostDetails` longtext CHARACTER SET utf8,
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
(2, 'Bangabandhu T20 Cup: Chattogram cement top spot', 4, 1, 'Gazi Group Chattogram beat Gemcon Khulna in a dramatic way by three wickets on Tuesday to cement the top place in the points table of the ongoing Bangabandhu T20 Cup 2020, reports UNB.\r\nChattogram needed to score nine runs in the last over bowled by Al Amin Hossain. Mustafizur Rahman and Shamsur Rahman were at the crease to complete the task.\r\nMustafizur failed to score from the first ball but hit the second one for a four. There were two singles and one leg-bye in the next three balls. Chattogram needed two runs out of the last ball of the match. Shamsur smashed Al Amin for six to seal the game by three wickets.\r\nShamsur remained unbeaten at 45 off 30 balls with five fours and one six while Mustafizur was also unbeaten at five off four balls.\r\nChattogram ended up on 162 for seven in 20 overs while chasing the target of 158.\r\nBefore Shamsurâ€™s late heroics, Soumya Sarkar (19), Mahmudul Hasan Joy (24), Mohammad Mithun (23) contributed well to ensure a win.\r\nFor Khulna, Shakib Al Hasan and Shuvagata Hom took two wickets each while Mashrafe Bin Mortaza, Al Amin and Hasan Mahmud took one wicket each.\r\nEarlier, Chattogram lost the toss and sent Khulna to bat first. They posted a fighting total of 157 runs. Despite losing the wickets on a regular basis, Khulna managed to post a 150-plus score riding on the bat of Shuvagata Hom who scored 32 off 14 with six fours and one six and remained unbeaten.\r\nJahurul Islam (26), Zakir Hasan (15), Shakib Al Hasan (15), Imrul Kayes (24), Mahmudullah Riyad (26) also contributed well with the bat.\r\nFor Chattogram, Shoriful Islam bagged three wickets conceding 34 runs while Mustafizur took two and Mosaddek Hossain and Ziaur Rahman took one wicket each.\r\nWith this game, Mashrafe Bin Mortaza, Bangladeshâ€™s former captain, made a comeback to the competitive cricket after a long hiatus of nine months forced by COVID-19. Upon his return, Mashrafe bagged one wicket conceding 28 runs in four overs.\r\nDespite losing this game, Khulna, like Chattogram, booked a place in the playoff of this event. While Chattogram secured 10 points from five wins out of six games they have played so far while Khulna secured eight points from four wins in seven games.\r\n', '2020-12-11 14:25:13', NULL, 1, 'Bangabandhu-T20-Cup:-Chattogram-cement-top-spot', '4ab1baccb95c19ac5ea1b83007ad4e86jpeg'),
(3, 'Disney Has Some Major Marvel And Star Wars Projects Planned!', 6, 4, 'Fans of Disney, the Marvel Cinematic Universe, and Star Wars had an embarrassment of riches to pour over yesterday. During the 2020 Investor Day presentation for The Walt Disney Company, creative forces Kevin Feige, Kathleen Kennedy, and more, were on hand to tease out much of whatâ€™s coming in the next few years. A lot of their focus is on Disney+ shows, as well as Pixar efforts that will be headed to the service, but they saved some room for feature talk, as well. Both properties have some high profile movie announcements that were made, exciting the fan base. Suffice it to say, the film world, once it gets back to normal, will have plenty to look forward to in the years to come.\r\n\r\nFirst, the Marvel news was largely centered on the new series coming to Disney+, as youâ€™ll see below, but Kevin Fiege and company also announced their Fantastic Four movie is in development, with Spider-Man franchise helmer Jon Watts taking the charge. That was probably their most surprising news, alongside announcing the title for the third Ant-Man film, which will be called Ant-Man and the Wasp: Quantumania. More nextâ€¦\r\n\r\nHereâ€™s a bit from the official Marvel write up of the news:\r\n\r\nThe Marvel Cinematic Universe is expanding in huge, exciting ways! Revealed during The Walt Disney Companyâ€™s 2020 Investor Day presentation by Kevin Feige, president, Marvel Studios, and chief creative officer, Marvel, get ready for new series coming to Disney+, along with brand new films in the near future.\r\n\r\nâ€œThe Cinematic Universe weaves storylines, heroes and villains across 23 feature films to date,â€ Fiege said. â€œAnd with Disney+, weâ€™re able to extend this way of storytelling to a new format â€” creating series that are connected to our theatrical releases, making the MCU more immersive than ever.â€\r\n\r\nPhase 4 of the MCU kicks off with Marvel Studiosâ€™ WandaVision, premiering on Disney+ on January 15, and continues throughout 2021 with new films â€” like Marvel Studiosâ€™ Black Widow, Marvel Studiosâ€™ Eternals, and more! In addition to that, the superhero adventures are just getting started on the small screen and additional Disney+ series will feature characters like Loki, Ms. Marvel, and Kate Bishop. But thatâ€™s still not all!\r\nNow, Star Wars wise, there was a ton. You can see it all next, but the biggest news, and most surprising, was that Patty Jenkins is blasting off into space to helm a Rogue Squadron flick. Theyâ€™re obviously also focusing on a number of Disney+ series, including the Obi-Wan series everyone has long awaited (with Hayden Christensen returning as Darth Vader!), so it was a huge day all around for Disney.\r\n\r\nTheir own official write up goes like this:\r\n\r\nToday at The Walt Disney Companyâ€™s Investor Day event, Lucasfilm president Kathleen Kennedy announced a staggering number of new films, series, and surprises that will expand the Star Wars galaxy like never before.\r\n\r\nRogue Squadron\r\n\r\nThe next Star Wars feature film will be Rogue Squadron â€” directed by Patty Jenkins (Wonder Woman franchise). The story will introduce a new generation of starfighter pilots as they earn their wings and risk their lives in a boundary-pushing, high-speed thrill-ride, and move the saga into the future era of the galaxy.\r\n\r\nâ€œItâ€™s been a lifelong dream as a filmmaker to one day make a great fighter pilot film,â€ said Jenkins. â€œAs the daughter of a great fighter pilot myself, some of the best memories of my life are of seeing my fatherâ€™s squadron take off in their F4s every morning, and hearing and feeling the awe-inspiring power and grace. When he passed away in service to this country it ignited a burning desire to one day channel all of those emotions into one great film. When the perfect story arrived in combination with another true love of mine, the incomparable world of Star Wars, I knew Iâ€™d finally found my next film. Iâ€™m extremely honored and excited to take it on, and grateful to Lucasfilm, Disney, and the fans for extending that thrill to me.â€\r\n\r\nâ€œPatty has established herself as one of the top directors working in the film industry today,â€ said Lucasfilm president Kathleen Kennedy. â€œSheâ€™s a visionary who knows how to strike the balance between action and heart, and I canâ€™t wait to see what she does in the Star Wars galaxy.â€\r\n\r\nLock S-foils in attack position: Rogue Squadron arrives in theaters Christmas 2023.\r\n\r\nUntitled Taika Waititi Film\r\n\r\nA brand-new Star Wars feature with acclaimed filmmaker and Academy Award-winner Taika Waititi is in development. â€œTaikaâ€™s approach to Star Wars will be fresh, unexpected, andâ€¦unique,â€ said Kennedy. â€œHis enormous talent and sense of humor will ensure that audiences are in for an unforgettable ride.â€\r\n\r\nObi-Wan Kenobi\r\n\r\nLast August at D23 Expo, Lucasfilm announced the return of Ewan McGregor in the iconic role of Jedi Master Obi-Wan Kenobi for a special event series on Disney+. Officially titled Obi-Wan Kenobi, the series begins 10 years after the dramatic events of Star Wars: Revenge of the Sith where he faced his greatest defeat, the downfall and corruption of his best friend and Jedi apprentice, Anakin Skywalker turned evil Sith Lord Darth Vader. The series is directed by Deborah Chow, who helmed memorable episodes of The Mandalorian Season 1.\r\n\r\nThis will truly be a day long remembered, as it was confirmed that Hayden Christensen will be returning as Darth Vader. â€œThis will be the rematch of the century,â€ Kennedy said.\r\n\r\nâ€œIt was such an incredible journey playing Anakin Skywalker,â€ said Christensen. â€œOf course, Anakin and Obi-Wan werenâ€™t on the greatest of terms when we last saw themâ€¦ It will be interesting to see what an amazing director like Deborah Chow has in store for us all. Iâ€™m excited to work with Ewan again. It feels good to be back.â€\r\n\r\nAhsoka\r\n\r\nAfter making her long awaited live-action debut in The Mandalorian, Ahsoka Tanoâ€™s story, written by Dave Filoni, will continue in a limited series starring Rosario Dawson and executive produced by Dave Filoni and Jon Favreau.\r\n\r\nRangers of the New Republic\r\n\r\nSet within the timeline of The Mandalorian, this new live-action series from executive producers Jon Favreau and Dave Filoni will intersect with future stories and culminate into a climactic story event.\r\n\r\nLando\r\n\r\nEveryoneâ€™s favorite scoundrel Lando Calrissian will return in a brand-new event series for Disney+. Justin Simien, creator of the critically-acclaimed Dear White People and a huge Star Wars fan, is developing the story.\r\n\r\nAndor\r\n\r\nAndor, a tense nail-biting spy thriller created by Tony Gilroy, is set to arrive on Disney+ in 2022. Diego Luna, reprising the role of rebel spy Cassian Andor from Rogue One, will be joined by a fantastic new cast that includes Stellan Skarsgard, Adria Arjona, Fiona Shaw, Denise Gough, Kyle Soller, and Genevieve Oâ€™Reilly as Mon Mothma. Production kicked off three weeks ago in London.\r\n\r\nThe Acolyte\r\n\r\nLeslye Headland, Emmy Award-nominated creator of the mind-bending series Russian Doll, brings a new Star Wars series to Disney+ with The Acolyte. The Acolyte is a mystery-thriller that will take the audience into a galaxy of shadowy secrets and emerging dark side powers in the final days of the High Republic era.\r\n\r\nStar Wars: The Bad Batch\r\n\r\nThe series follows the elite and experimental clones of the Bad Batch (first introduced in The Clone Wars) as they find their way in a rapidly changing galaxy in the immediate aftermath of the Clone War. Members of Bad Batch â€” a unique squad of clones who vary genetically from their brothers in the Clone Army â€” each possess a singular exceptional skill which makes them extraordinarily effective soldiers and a formidable crew. In the post-Clone War era, they will take on daring mercenary missions as they struggle to stay afloat and find new purpose.\r\n\r\nThe animated series will arrive exclusively on Disney+.\r\n\r\nStar Wars: Visions\r\n\r\nPresenting all-new, creative takes on the galaxy far, far away, Star Wars: Visions will be a series of animated short films celebrating Star Wars through the lens of the worldâ€™s best anime creators. The anthology collection will bring 10 fantastic visions from several of the leading Japanese anime studios, offering a fresh and diverse cultural perspective to Star Wars.\r\n\r\nA Droid Story\r\n\r\nAs Lucasfilm continues to develop new stories, the intersection of animation and visual effects offers new opportunities to explore. Lucasfilm Animation will be teaming up with Lucasfilmâ€™s visual effects team, Industrial Light & Magic, to develop a special Star Wars adventure for Disney+, A Droid Story. This epic journey will introduce us to a new hero, guided by legendary duo R2-D2 and C-3PO.\r\n\r\nOther Lucasfilm Stories\r\n\r\nLucasfilm is currently in pre-production on the next installment of the Indiana Jones franchise. At the helm is James Mangold, director of the Academy Award-winning Ford v Ferrari, and Indy himself, Harrison Ford, will be back to continue his iconic characterâ€™s journey. Indy will begin shooting late spring of 2021 and will arrive July 2022.\r\n\r\nWillow, coming to Disney+, will be set decades after Ron Howardâ€™s 1988 movie, continuing the spirit of adventure, heroics, and humor of the original film. Warwick Davis will return in the role of the great sorcerer, Willow Ufgood, with Jon Chu (director of the groundbreaking Crazy Rich Asians) directing the pilot. Willow begins shooting next March in Wales and will debut on Disney+ in 2022.\r\n\r\nFinally, the Lucasfilm catalog is expanding further with a story that will introduce a new hero and explore an original world that feels perfectly paired with Lucasfilm storytelling: Tomi Adeyemiâ€™s New York Times bestselling novel Children of Blood & Bone. The story will center around a young African girlâ€™s heart-racing quest to restore magic to her forsaken people, the Maji. Lucasfilm will partner with 20th Century Studios on this coming-of-age adventure.', '2020-12-12 11:56:09', NULL, 1, 'Disney-Has-Some-Major-Marvel-And-Star-Wars-Projects-Planned!', '0e33deed119dadeaf06d4aca59c30582.jpg'),
(4, '6 hacks to eat smart and cut down food waste', 7, 5, 'Few days to the year-end festivities and wed all be drowned in festive cheer and great food! The celebrations however are usually accompanied by a lot of wastage. We can be more mindful about our relationship with food by incorporating these small changes into our daily life to reduce food wastage:\r\n\r\nBuy Smart: Stick to your list of needs and avoid impulse buying. Donâ€™t buy in bulk, but make frequent trips to the grocery store instead and coincide it with your jogging schedule or biking time so the trips become fun! Thisâ€™ll ensure you only buy what you really need.\r\n\r\nStore Smart: Proper storage of foods will help keep them at their peak for longer. Not all foods need refrigeration - Potatoes, tomatoes, garlic, cucumbers and onions should be stored at room temperature. Some fruits and vegetables produce ethylene gas that causes early ripening (or rotting) of foods that are sensitive to ethylene. These should always be stored separately. Foods that produce ethylene gas include bananas, avocados, tomatoes, cantaloupes, peaches, pears, green onions. Store them in separate bags and away from ethylene-sensitive foods like potatoes, apples, leafy greens, berries and peppers to avoid premature spoilage.\r\nRefrigerate Smart: Stock your fridge using the FIFO method (First in, first out). Place newly bought foods behind older ones. For example when you buy a new carton of berries, place the newer package behind the old one. This helps ensure that older food gets used, not wasted. Also when youâ€™ve kept leftovers in the fridge, keep them in glass containers so you donâ€™t forget about them.\r\n\r\nSmoothie Smart: While the stems, ends and peels of many items may not be appetizing in their whole form, adding them to a smoothie is a way to reap their nutritional benefits. Spinach leaves and stems that turn soggy after just a day or two in the kitchen, can be stored in the freezer and be used to make a super healthy smoothie.\r\nUpcycle Smart: Get innovative with leftovers and turn them into delicious sandwiches and rolls. Leftover white rice can be turned into delicious tomato rice the next day, or even a fried-rice, and leftover sabzis can be used to make healthy parathas and sandwiches!\r\n\r\nOrder Smart: Be mindful of the quantity of food you order at restaurants. When youâ€™re unable to finish, always ask for it to be packed to bring back home. Today there are multiple restaurants that have a special small-plate menu: an initiative that has effectively proven to reduce leftovers.\r\n\r\nDineout Passport, a dining out membership by Dineout, has recently launched a #FeedTheFuture campaign. The initiative aims to raise awareness towards food wastage and encourage the adoption of sustainable practices in restaurant and home kitchens. In order to encourage their users to reduce wastage in their own kitchens, Dineout Passport has launched the â€œCook Smartâ€ series - an Instagram TV (IGTV) series featuring chefs from top restaurants in India, who are sharing zero-waste recipes.', '2020-12-12 12:04:39', NULL, 1, '6-hacks-to-eat-smart-and-cut-down-food-waste', 'ce4c7c9e16315ae853eef646ec470000.jpg'),
(5, 'COVID-19: Govt reports 30 deaths, 1181 cases', 2, 3, 'The number of detected novel coronavirus cases in Bangladesh, according to the government, on Tuesday rose to 511,261 as 1181 more cases were reported, after testing 14,588 samples, including rapid antigen tests, in the last 24 hours.\r\nDuring that time 30 more COVID-19 patients died, raising the total deaths in the country to 7,509, said a press release of Directorate General of Health Services (DGHS) today.\r\nThe rate of detection in the last 24 hours until 8:00am was 8.10 per cent, while the overall rate of detection of infected cases in Bangladesh as of Tuesday stands at 15.98 per cent.\r\nThe health directorate today said a total of 1,245 people were recovered from the highly infectious disease in the last 24 hours, taking the number of total recovery to 454,563.\r\nThe overall rate of people recovered as of today stands at 88.91 per cent while the rate of death is 1.47 per cent, it added.\r\nOf the people died in the last 24 hours, 19 were male and 11 female. Of the total deaths so far, 5,717 were male (76.13 per cent) and 1,792 female (23.87 per cent).\r\nAll 30 patients died in the last 24 hours breathed their last at different hospitals.\r\nA total of 14,820 samples were collected in the last 24 hours. As of Tuesday, the number of samples tested in Bangladesh stands at 31,99,115.\r\nBangladesh detected first coronavirus patient on 8 March and recorded first death on 18 March.\r\n', '2020-12-29 13:10:50', NULL, 1, 'COVID-19:-Govt-reports-30-deaths,-1181-cases', 'f3ccdd27d2000e3f9255a7e3e2c48800.jpg'),
(6, 'Christopher Nolan doesnâ€™t have a smartphone', 6, 4, 'Hollywood filmmaker Christopher Nolan makes films that have re-organised imagination when it comes to the sci-fi genre of cinema. The filmmaker surprises you with his revelation that he does not own a smartphone. Instead, he has a little flip phone that he uses from time to time.\r\nâ€œItâ€™s true that I donâ€™t have a smartphone. I have a little flip phone that I take with me from time to time. Iâ€™m easily distractible so I donâ€™t really want to have access to the internet every time when Iâ€™m bored,â€ Nolan told People magazine, reports femalefirst.co.uk.\r\nHe added: â€œI do a lot of my best thinking in those kind of in-between moments that people now fill with online activity, so it benefits me. When Iâ€™m working, Iâ€™m just surrounded by, I mean, everybodyâ€™s got a phone. I canâ€™t hide, so Iâ€™m very easy to get in touch with when Iâ€™m working.â€\r\nNolan prefers to make calls using a landline than communicating via emails.\r\nâ€œI just have never been particularly interested in communicating with people in that way. I prefer just calling people from a landline. So yeah, I mean, everybody finds their own way to communicate with people and deal with things,â€ he said.\r\n', '2020-12-29 13:20:41', NULL, 1, 'Christopher-Nolan-doesnâ€™t-have-a-smartphone', '156005c5baf40ff51a327f1c34f2975b.jpg'),
(7, 'India lifts ban on onion exports as Bangladesh farmers begin harvesting', 5, 6, 'India decided on Monday to lift a ban on onion exports from 1 January, as prices have fallen sharply in the last few weeks on expectations of a big crop, reports news agency Reuters.\r\n\r\nExports of all varieties of onion will be allowed, the ministry of commerce and industry said in a notification.\r\n\r\nThe Indian government has taken the decision at a time when the farmers of Bangladesh have been harvesting the crop.\r\n\r\nIndia banned exports of onions in September to preserve domestic supplies after flooding in several states worsened seasonal shortages, leading to a spike in local prices.', '2020-12-29 13:26:00', NULL, 1, 'India-lifts-ban-on-onion-exports-as-Bangladesh-farmers-begin-harvesting', 'd0096ec6c83575373e3a21d129ff8fef.jpg'),
(8, 'Trump, under pressure, signs $900b COVID-19 relief bill', 5, 7, 'After delaying for nearly a week and under pressure from all sides, US president Donald Trump finally signed a massive $900 billion stimulus bill Sunday, in a long-sought boost for millions of Americans and businesses battered by the coronavirus pandemic.\r\n\r\nThe package â€œproviding coronavirus emergency response and reliefâ€ is part of a larger spending bill that, with Trumpâ€™s signature, will avoid a government shutdown on Tuesday.\r\n\r\nâ€œI am signing this bill to restore unemployment benefits, stop evictions, provide rental assistance, add money for PPP (Paycheck Protection Programs), return our airline workers back to work, add substantially more money for vaccine distribution, and much more,â€ the president said in a statement from his Christmas vacation at his Mar-a-Lago resort in Florida.\r\n\r\nThe turnaround came after a day marked by calls from all sides of the political spectrum for action to avert an economic and social disaster, especially for Americaâ€™s vulnerable populations.\r\n\r\nTwo federal unemployment benefit programs approved in March as part of an initial COVID-19 relief plan expired at midnight on Saturday, cutting off an estimated 12 million Americans, according to The Century Foundation think tank.\r\n\r\nThe relief package, which was first passed by Congress on 21 December, extends those benefits as well as others set to expire in the days ahead.\r\n\r\nBut for days, Trump had refused to put his signature on it, calling the bill a â€œdisgraceâ€ and catching both Democrats and Republicans off guard with his complaints, which came after months of negotiations.\r\n\r\nInfluential Republican senator Mitt Romney said he was â€œrelievedâ€ at the signing. â€œHelp is now on the way to workers, families, and small businesses across the country who are desperately in need,â€ he tweeted.\r\n\r\nEarlier Sunday, he had urged Trump to â€œimmediately sign or veto the COVID-19 relief package so Congress can act before itâ€™s too late.â€\r\nCrucial Aid\r\n\r\nIn his statement Sunday, the president continued to push for the $600 direct payments to US taxpayers spelled out in the bill to be more than tripled, and argued the legislation included too much excess spending on unrelated programs.\r\n\r\nHe has not said why he waited until the bill was already approved to make his views known.\r\n\r\nThe new stimulus package extends federal aid to the unemployed until mid-March, and provides guaranteed loans and billions of dollars in aid to small businesses, restaurants, hotels, airlines and other companies.\r\n\r\nIt extends the moratorium on evictions of people unable to pay their rent, suspends foreclosures and provides funds for the distribution of COVID-19 vaccines.\r\n\r\nThe aid is essential to the worldâ€™s largest economy, hit hard by restrictions put in place to halt the spread of COVID-19.\r\n\r\nâ€œI applaud the Presidentâ€™s decision to get billions of dollars of crucial COVID-19 relief out the door and into the hands of American families,â€ tweeted Republican Senate leader Mitch McConnell.\r\n\r\nHouse Democratic leader Nancy Pelosi called the bill â€œa down payment on what is needed to crush the virus, put money in Americansâ€™ pockets & honor our heroes.â€\r\nâ€œWe must quickly take further action,â€ she added in a tweet.', '2020-12-29 13:28:32', NULL, 1, 'Trump,-under-pressure,-signs-$900b-COVID-19-relief-bill', '032b2cc936860b03048302d991c3498f.jpg');

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
(5, 7, 'Fooding', 'News about fooding', '2020-12-12 12:03:43', '2020-12-12 12:05:03', 1),
(6, 5, 'Local', 'local news', '2020-12-29 13:22:09', '0000-00-00 00:00:00', 1),
(7, 5, 'Global', 'global news', '2020-12-29 13:27:07', '0000-00-00 00:00:00', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
