-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2022 at 09:08 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ultimate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `destination` varchar(100) NOT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `tourNo` varchar(100) NOT NULL,
  `tourName` varchar(100) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `phoneNumber` varchar(100) NOT NULL,
  `tourspend` varchar(100) NOT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `destination`, `FromDate`, `ToDate`, `tourNo`, `tourName`, `UserEmail`, `country`, `phoneNumber`, `tourspend`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, '', '05/18/2017', '05/31/2017', '', '', 'anuj@gmail.com', '', '', '', '\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23'),
(3, 2, '', '05/16/2017', '05/31/2017', '', '', 'anuj@gmail.com', '', '', '', 'casf esd sg gd gdfh df', '2017-05-13 20:20:01', 2, 'a', '2017-05-13 23:04:40'),
(4, 1, '', '05/16/2017', '05/31/2017', '', '', 'anuj@gmail.com', '', '', '', 'dwef  fwe', '2017-05-13 20:32:54', 2, 'a', '2017-05-13 21:36:39'),
(5, 1, '', '05/16/2017', '05/31/2017', '', '', 'anuj@gmail.com', '', '', '', 'dwef  fwe', '2017-05-13 20:33:17', 2, 'a', '2019-07-20 20:02:42'),
(6, 2, '', '05/14/2017', '05/24/2017', '', '', 'anuj@gmail.com', '', '', '', 'test demo', '2017-05-13 21:18:37', 2, 'a', '2017-05-14 07:58:28'),
(7, 4, '', '05/26/2017', '05/30/2017', '', '', 'sarita@gmail.com', '', '', '', 'est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-05-14 05:09:11', 2, 'a', '2017-05-14 07:47:39'),
(8, 2, '', '05/27/2017', '05/28/2017', '', '', 'sarita@gmail.com', '', '', '', 'ubub5u6', '2017-05-14 05:10:24', 2, 'a', '2017-05-14 05:13:03'),
(9, 1, '', '05/19/2017', '05/21/2017', '', '', 'demo@test.com', '', '', '', 'demo test demo test', '2017-05-14 07:45:11', 1, NULL, '2017-05-14 07:47:45'),
(10, 5, '', '05/22/2017', '05/24/2017', '', '', 'abc@g.com', '', '', '', 'test test t test test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:26', 1, NULL, '2017-05-14 07:58:19'),
(11, 4, '', '2019-07-31', '2019-08-02', '', '', 'anuj@gmail.com', '', '', '', 'This is sample text for testing,', '2019-07-20 20:15:35', 0, NULL, NULL),
(12, 1, '', '2022-10-12', '2022-10-14', '', '', 'gigigji@gmail.com', '', '', '', 'sdfuyihojp', '2022-10-11 13:33:04', 0, NULL, NULL),
(13, 5, '', '2022-10-13', '2022-10-10', '', '', 'gigs@gmail.com', '', '', '', '23', '2022-10-24 08:02:14', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbldestination`
--

CREATE TABLE `tbldestination` (
  `id` int(11) NOT NULL,
  `desti_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 NOT NULL,
  `links` varchar(100) NOT NULL,
  `description` mediumtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldestination`
--

INSERT INTO `tbldestination` (`id`, `desti_name`, `image`, `links`, `description`) VALUES
(1, 'Campaign against Genocide Museum', 'museum 2.jpg', '', 'Campaign against Genocide Museum is a museum located in the Parliamentary building, in Kigali. CAG Museum depicts in detail how the Campaign Against Genocide Plan was executed by RPF/A following the withdrawal of UN troops leaving the targeted Tutsi under the mercy of the Genocidaires and how only the RPF/A forces who were in the war of liberation took the unilateral decision to stop Genocide, Rescue victims of Genocide and defeat the Genocidal forces. This CAG Museum also has its outer part comprised of monuments including that of the 12.7mm Machine Gun'),
(2, 'Kigali Markets and craft shops', 'Kimironko.jpg', '', ''),
(3, 'Umusambi Village', 'Umusambi village.jpg', '', 'This is a beautifully restored wetland area, providing a sanctuary for over 50 endangered Grey Crowned Cranes saved from the illegal pet trade. These majestic birds have been disabled as a result of captivity and are unable to be returned to the wild. Their new permanent home provides an enriching environment for them to enjoy nature again.\r\n\r\nAs well as the Grey Crowned Cranes, this 21-hectare nature reserve is a peaceful haven for visitors to enjoy the walking trails and be at one with nature, while also learning about our conservation work and the importance of protecting our natural environments.'),
(4, 'Nyungwe National Park', 'nyu.jpg', '', 'Lies in southwest Rwanda, partly abutting the Burundi border. It\'s a vast area of mountain rainforest, home to many species of chimpanzees, plus owl-faced and colobus monkeys. The Canopy Walkway, part of the Igishigishigi Trail, is a high-suspension bridge with views over the valley and surrounding forests. A trail runs to the Kamiranzovu Marsh, with its birdlife, orchids, and waterfall'),
(5, 'One & Only Nyungwe House', 'The-one-and.jpg', '', ''),
(6, 'Gorilla guardians Village', 'Webp.net-.jpg', '', 'Gorilla Guardians is a Non-Profit umbrella organization that aims at improving the lives of reformed poachers and communities around Rwanda’s Volcanoes National Park through the provision of conservation incentives, supporting community enterprise development, and livelihood-based projects.'),
(7, 'Volcanoes National Park', 'IMG-20220309-WA0025.jpg', 'volcanoes.php', 'Situated in the far northwest of Rwanda, Volcanoes National Park protects the steep slopes of this magnificent mountain range – home of the endangered mountain gorillas and a rich mosaic of montane ecosystems, which embrace evergreen and bamboo forest, open grassland, swamps.\r\nVolcanoes National Park is named after the chain of dormant volcanoes making up the Virunga Massif: Karisimbi – the highest at 4,507m, Bisoke with its verdant Crater Lake, Sabyinyo, Gahinga, and Muhabura.'),
(8, 'Karenge Bushcamp', 'Karenge-bush-Camp.jpg', '', 'Karenge means ‘small footprint’ in Kinyarwanda, and it’s the name of the area where the camp was first established. The word also represents Karenge Bush Camp’s commitment to leaving nothing more than a light ecological footprint. The camp is open for 11 months of the year, only closing for the month of April. Every tent contains two cozy camp beds with mattresses and bedding, camp chairs, reed mat floors, and solar lights for reading before bed, the sounds of nature all around you. The camp’s six tents enjoy their own private, outdoor bathrooms with bucket showers, toilets, and canvas basins. Warm water is provided daily.'),
(9, 'AKAGERA NATIONAL PARK\r\n', 'akagera.jpg', 'akagera.php', 'Named after a river which forming the part of the upper headwaters of the Nile, Akagera has an inspiring conservation story as it is now home to lions and rhinos, and is the only Big Five Park in the country and the largest protected wetland in central Africa\r\nJust two hours’ drive from Kigali, it is a beautiful and convenient savannah landscape to visit. For one park, the diversity of habitats is unique including lakes, marshes, savannah, mountains and woodland, all which make an overwhelmingly beautiful scenery.\r\nA birders delight, Akagera offers an exceptional birding experience with more than 482 bird species documented including the rare and prehistoric shoebill and some Lake Victoria endemics.  \r\nProceeds from tourism revenue are invested back into the conservation work of the park and the local community livelihood, known as “Revenue sharing.”\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` varchar(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `budget` varchar(100) NOT NULL,
  `hearbout` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `budget`, `hearbout`, `destination`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'video', '', '', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-05-13 22:23:53', 1),
(2, 'efgegter', 'terterte@gmail.com', '3454353453', 'phone', '', '', '', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:27:00', 1),
(3, 'fwerwetrwet', 'fwsfhrtre@hdhdhqw.com', '8888888888', 'erwt wet', '', '', '', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', '399', 'social Media', 'Akagera', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2017-05-14 07:54:07', 1),
(5, 'qwerty', 'gigsrick@gmail.com', '3274039840', 'nsoic', '', '', '', 'snoci', '2022-10-06 19:20:07', 1),
(6, 'llllllllll', '', NULL, 'Select...', 'Select...', 'Select...', 'Select...', '', '2022-11-09 04:55:21', NULL),
(7, 'Jesus', 'santisoftpro@gmail.com', '0780042383', 'Phone', 'Phone', 'Phone', 'Phone', 'Thank you', '2022-11-09 04:56:40', NULL),
(8, 'Kwizera', 'ad@gm.co', '0780042383', 'Phone', 'Phone', 'Phone', 'Phone', 'naaa', '2022-11-09 05:23:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'anuj@gmail.com', 'Cancellation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ', '2017-05-13 22:03:33', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '2017-05-13 23:50:40'),
(5, 'sarita@gmail.com', 'Cancellation', 'tbt 3y 34y4 3y3hgg34t', '2017-05-14 05:12:14', 'sg sd gs g sdgfs ', '2017-05-14 07:52:07'),
(6, 'demo@test.com', 'Refund', 'demo test.com demo test.comdemo test.comdemo test.comdemo test.com', '2017-05-14 07:45:37', NULL, '0000-00-00 00:00:00'),
(7, 'abc@g.com', 'Refund', 'test test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:46', 'vetet ert erteryre', '2017-05-14 07:58:43'),
(8, NULL, NULL, NULL, '2022-10-06 19:24:33', NULL, NULL),
(9, NULL, NULL, NULL, '2022-10-11 13:32:29', NULL, NULL),
(10, NULL, NULL, NULL, '2022-10-24 08:01:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Test test</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Akagera Nationa Park Trip', 'General', 'Kigali-Rwanda', 300, 'Bus Pickup, Air Conditional, Photoshot, Relaxing', 'Named after a river which forming the part of the upper headwaters of the Nile, Akagera has an inspiring conservation story as it is now home to lions and rhinos, and is the only Big Five Park in the country and the largest protected wetland in central Africa\r\nJust two hours’ drive from Kigali, it is a beautiful and convenient savannah landscape to visit. For one park, the diversity of habitats is unique including lakes, marshes, savannah, mountains and woodland, all which make an overwhelmingly beautiful \r\n\r\n\r\n\r\nscenery.\r\nA birders delight, Akagera offers an exceptional birding experience with more than 482 bird species documented including the rare and prehistoric shoebill and some Lake Victoria endemics.  \r\nProceeds from tourism revenue are invested back into the conservation work of the park and the local community livelihood, known as “Revenue sharing.”\r\n\r\nPACKAGES\r\nDay game drive\r\nDrive thought the beautiful, scenic landscape of Akagera with exceptional encounters with numerous land mammals including zebras, elephants, rhinos, lions, buffalos and hundreds of bird species that inhabit the park. You will be with a knowledgeable guide, who will explain and meet with your curiosity on animal behavior, ecology and conservation journey of this magnificent terrain.\r\nPrices: \r\n\r\n\r\nBoat Trips\r\nIf you are looking for a variation on the typical safari, you should consider a boat trip on Lake Ihema, where you can cruise along the forest-fringed body of water in the midst of hippos and crocodiles. For serious birders, a boat trip is a must. You can book a private cruise or group rides.\r\nNote for Pick & Find: Outings take place four times a day—at 7.30am, 9am, 3pm and 4.30pm. Non-scheduled, private trips can also be arranged.\r\nPrices:\r\nIndividual:\r\n\r\nFishing\r\nLake Shakani is the perfect site for sport fishing. Spend a relaxing day fishing from the shores of the lake before cooking your catch over an open fire at your campsite. \r\nNote for Pick & Find: Please bring your own equipment.\r\nPrices:\r\n\r\nBehind the Scenes\r\nThis is a perfect tour for you, if you are looking for more in depth experience into Akagera, this includes; private tour of park headquarters, where you’ll meet employees across management departments while learning about exciting research, wildlife monitoring, translocation and other conservation developments of the Park. Both private and group (8 people max) are organized.\r\nPrices:\r\n\r\nNight Drive\r\nGuided night drives that commence at sunset are a fantastic way to cap off your day in the park. Night drives offer the best chance of seeing nocturnal wildlife, from lions to leopards which are among the most sought-after sightings! \r\nNote for Pick & Find: Night drives are operated by the park’s safari vehicle, which can accommodate up seven guests.  \r\nPrices:  \r\n\r\n\r\nWalk the Line\r\nSpend the morning in the shoes of one of Akagera’s fence attendants, who walk a portion of the 120-km perimeter fence on a daily basis to make sure the fence remains intact and is fully operational. These walks, which run alongside the park exterior, begin at the park entrance, are seven km long, and take visitors into the hills. When you come to the end, you’ll be atop a ridge that enjoys spectacular views in every direction. \r\nNote for Pick & Find: Walks are led by freelance community guides and take approximately two hours.\r\nPrices:\r\n\r\nCommunity Cultural Experiences\r\nWorking with local communities and Akagera staff, our Community Freelance Guides have developed several cultural experiences to share with guests. Learn about milking cows and traditions around cattle and milk on a farm in the Eastern Province; or spend time with banana beer and honey artisans to experience how local products are made. \r\nPrices:', 'akagera-national-park=405348-300.jpg', '2017-05-13 14:23:44', '2022-10-21 15:46:32'),
(2, 'Nyungwe National Park Trip', 'Couple package ', 'Kigali-Rwanda', 100, 'Bus Pickup ', 'Enjoy  your trip with us\r\n\r\nthank you', 'CHIMPS-trekking.webp', '2017-05-13 15:24:26', '2022-10-24 07:36:51'),
(3, 'Kigali City Tour', 'Family Package-Couple Package', 'Kigali-Rwanda', 300, 'Free Pickup in kigali', 'This Tour it is very chip', 'museum 2.jpg', '2017-05-13 16:00:58', '2022-10-24 07:39:16'),
(4, 'Volcano National Park', 'Family Package-Couple Package', 'Musanze-Rwanda', 500, 'Free Pickup in kigali', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'History-of-Volcanoes-National.jpg', '2017-05-13 22:39:37', '2022-10-24 07:41:14'),
(5, 'Coorg : Tour Packages', 'General', 'Coorg', 3000, ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Hiking-1.jpg', '2017-05-13 22:42:10', '2022-10-24 07:53:32'),
(6, 'Indonesia', 'Family', 'Indonesia', 5000, 'Frree wifi, pickup and drop etc', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', 'mamp-pro-logo-big.png', '2017-05-14 08:01:08', '2017-05-14 08:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '1111111111', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:38:17', '2019-07-20 20:18:18'),
(3, 'sarita', '9999999999', 'sarita@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:50:48', '2017-05-14 07:40:19'),
(7, 'test', '7676767676', 'test@gm.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:54:56', '0000-00-00 00:00:00'),
(8, 'Anuj kumar', '9999999999', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:17:44', '0000-00-00 00:00:00'),
(9, 'XYZabc', '3333333333', 'xyz@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:25:13', '2017-05-14 07:25:42'),
(10, 'Anuj Kumar', '4543534534', 'demo@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:43:23', '2017-05-14 07:46:57'),
(11, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17'),
(12, 'qwerty', '0785999950', 'gigsrick@gmail.com', 'b71e9110238d15af14bf8c7eaefb4e82', '2022-10-06 19:24:33', NULL),
(13, 'QWERTY', '6870809', 'gigigji@gmail.com', 'b71e9110238d15af14bf8c7eaefb4e82', '2022-10-11 13:32:29', NULL),
(14, 'qwerty', 'qwerty', 'gigs@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2022-10-24 08:01:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tbldestination`
--
ALTER TABLE `tbldestination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbldestination`
--
ALTER TABLE `tbldestination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
