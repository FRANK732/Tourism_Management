-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 09:13 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GHTM`
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
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-05-22 11:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '05/18/2017', '05/31/2017', '\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23'),
(3, 2, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'casf esd sg gd gdfh df', '2017-05-13 20:20:01', 2, 'a', '2017-05-13 23:04:40'),
(4, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:32:54', 2, 'a', '2017-05-13 21:36:39'),
(5, 1, 'anuj@gmail.com', '05/16/2017', '05/31/2017', 'dwef  fwe', '2017-05-13 20:33:17', 2, 'a', '2019-07-20 20:02:42'),
(6, 2, 'anuj@gmail.com', '05/14/2017', '05/24/2017', 'test demo', '2017-05-13 21:18:37', 2, 'a', '2017-05-14 07:58:28'),
(7, 4, 'sarita@gmail.com', '05/26/2017', '05/30/2017', 'est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-05-14 05:09:11', 2, 'a', '2017-05-14 07:47:39'),
(8, 2, 'sarita@gmail.com', '05/27/2017', '05/28/2017', 'ubub5u6', '2017-05-14 05:10:24', 2, 'a', '2017-05-14 05:13:03'),
(9, 1, 'demo@test.com', '05/19/2017', '05/21/2017', 'demo test demo test', '2017-05-14 07:45:11', 1, NULL, '2017-05-14 07:47:45'),
(10, 5, 'abc@g.com', '05/22/2017', '05/24/2017', 'test test t test test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:26', 2, 'a', '2021-09-28 17:31:16'),
(11, 4, 'anuj@gmail.com', '2019-07-31', '2019-08-02', 'This is sample text for testing,', '2019-07-20 20:15:35', 2, 'a', '2021-09-28 17:35:02'),
(12, 1, 'frank@gmail.com', '2021-09-01', '2021-09-01', 'ok', '2021-09-25 21:09:28', 1, 'a', '2021-09-28 17:35:37'),
(13, 2, 'frank@gmail.com', '2021-09-29', '2021-09-29', 'here', '2021-09-28 17:47:37', 1, NULL, '2021-09-28 17:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-05-13 22:23:53', 1),
(2, 'efgegter', 'terterte@gmail.com', '3454353453', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:27:00', 1),
(3, 'fwerwetrwet', 'fwsfhrtre@hdhdhqw.com', '8888888888', 'erwt wet', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2017-05-13 22:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2017-05-14 07:54:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `cust_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
 `cust_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
 `card_number` bigint(20) NOT NULL,
 `card_cvc` int(5) NOT NULL,
 `created` datetime NOT NULL,
 `modified` datetime NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
(8, NULL, NULL, NULL, '2021-09-25 21:08:42', NULL, NULL),
(9, 'frank@gmail.com', 'Refund', 'not nice', '2021-09-25 21:13:45', NULL, NULL);

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
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong></font></p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">These terms and conditions outline the rules and regulations for the use of World-Tourism.org’s Website.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">By accessing this website we assume you accept these terms and conditions in full. Do not continue to use World-Tourism.org’s website<br>if you do not accept all of the terms and conditions stated on this page.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice<br>and any or all Agreements: “Client”, “You” and “Your” refers to you, the person accessing this website<br>and accepting the Company’s terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers<br>to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves, or either the Client<br>or ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake<br>the process of our assistance to the Client in the most appropriate manner, whether by formal meetings<br>of a fixed duration, or any other means, for the express purpose of meeting the Client’s needs in respect<br>of provision of the Company’s stated services/products, in accordance with and subject to, prevailing law<br>of . Any use of the above terminology or other words in the singular, plural,<br>capitalisation and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Cookies</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">We employ the use of cookies. By using World-Tourism.org’s website you consent to the use of cookies<br>in accordance with World-Tourism.org’s privacy policy.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">Most of the modern day interactive web sites<br>use cookies to enable us to retrieve user details for each visit. Cookies are used in some areas of our site<br>to enable the functionality of this area and ease of use for those people visiting. Some of our<br>affiliate / advertising partners may also use cookies.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">License</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">Unless otherwise stated, World-Tourism.org and/or it’s licensors own the intellectual property rights for<br>all material on World-Tourism.org. All intellectual property rights are reserved. You may view and/or print<br>pages from https://world-tourism.org for your own personal use subject to restrictions set in these terms and conditions.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">You must not:</p><ol style=\"margin-right: 0px; margin-bottom: 26px; margin-left: 40px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\"><li style=\"list-style-type: decimal;\">Republish material from https://world-tourism.org</li><li style=\"list-style-type: decimal;\">Sell, rent or sub-license material from https://world-tourism.org</li><li style=\"list-style-type: decimal;\">Reproduce, duplicate or copy material from https://world-tourism.org</li></ol><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">Redistribute content from World-Tourism.org (unless content is specifically made for redistribution).</p>\r\n										'),
(2, 'privacy', '<h3 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 20px;\">Your privacy is critically important to us.</h3><address style=\"color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">It is World-Tourism.org’s policy to respect your privacy regarding any information we may collect while operating our website. This Privacy Policy applies to&nbsp;<a href=\"https://world-tourism.org/\" style=\"transition-duration: 0.1s; transition-timing-function: ease-in-out; color: rgb(76, 196, 224);\">https://world-tourism.org</a>&nbsp;(hereinafter, “us”, “we”, or “https://world-tourism.org”). We respect your privacy and are committed to protecting personally identifiable information you may provide us through the Website. We have adopted this privacy policy (“Privacy Policy”) to explain what information may be collected on our Website, how we use this information, and under what circumstances we may disclose the information to third parties. This Privacy Policy applies only to information we collect through the Website and does not apply to our collection of information from other sources.<p style=\"margin-bottom: 26px; padding: 0px;\"></p></address><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">This Privacy Policy, together with the&nbsp;<a href=\"https://world-tourism.org/terms-and-conditions/\" style=\"transition-duration: 0.1s; transition-timing-function: ease-in-out; color: rgb(76, 196, 224);\">Terms and conditions</a>&nbsp;posted on our Website, set forth the general rules and policies governing your use of our Website. Depending on your activities when visiting our Website, you may be required to agree to additional terms and conditions.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Website Visitors</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">Like most website operators, World-Tourism.org collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. World-Tourism.org’s purpose in collecting non-personally identifying information is to better understand how World-Tourism.org’s visitors use its website. From time to time, World-Tourism.org may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">World-Tourism.org also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on https://world-tourism.org blog posts. World-Tourism.org only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Gathering of Personally-Identifying Information</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">Certain visitors to World-Tourism.org’s websites choose to interact with World-Tourism.org in ways that require World-Tourism.org to gather personally-identifying information. The amount and type of information that World-Tourism.org gathers depends on the nature of the interaction. For example, we ask visitors who sign up for a blog at https://world-tourism.org to provide a username and email address.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Security</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Advertisements</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">Ads appearing on our website may be delivered to users by advertising partners, who may set cookies. These cookies allow the ad server to recognize your computer each time they send you an online advertisement to compile information about you or others who use your computer. This information allows ad networks to, among other things, deliver targeted advertisements that they believe will be of most interest to you. This Privacy Policy covers the use of cookies by World-Tourism.org and does not cover the use of cookies by any advertisers.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Links To External Sites</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">Our Service may contain links to external sites that are not operated by us. If you click on a third party link, you will be directed to that third party’s site. We strongly advise you to review the Privacy Policy and terms and conditions of every site you visit.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">We have no control over, and assume no responsibility for the content, privacy policies or practices of any third party sites, products or services.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Aggregated Statistics</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">World-Tourism.org may collect statistics about the behavior of visitors to its website. World-Tourism.org may display this information publicly or provide it to others. However, World-Tourism.org does not disclose your personally-identifying information.</p><h2 style=\"color: rgb(34, 34, 34); font-family: &quot;Roboto Slab&quot;, sans-serif; line-height: 1.2; margin: 0px 0px 24px; font-size: 24px;\">Cookies</h2><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">To enrich and perfect your online experience, World-Tourism.org uses “Cookies”, similar technologies and services provided by others to display personalized content, appropriate advertising and store your preferences on your computer.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">A cookie is a string of information that a website stores on a visitor’s computer, and that the visitor’s browser provides to the website each time the visitor returns. World-Tourism.org uses cookies to help World-Tourism.org identify and track visitors, their usage of https://world-tourism.org, and their website access preferences. World-Tourism.org visitors who do not wish to have cookies placed on their computers should set their browsers to refuse cookies before using World-Tourism.org’s websites, with the drawback that certain features of World-Tourism.org’s websites may not function properly without the aid of cookies.</p><p style=\"margin-bottom: 26px; padding: 0px; color: rgb(165, 165, 163); font-family: &quot;Droid Sans&quot;, sans-serif;\">By continuing to navigate our website without changing your cookie settings, you hereby acknowledge and agree to World-Tourism.org’s use of cookies.</p>'),
(3, 'aboutus', '<div><div style=\"\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\">Ghana is a beautiful cultural-filled country located in the western part of Africa. It is a small country that has impressive tourist sites to show the world. This African country is considered one of the more \"stable\" ones as well when it comes to democracy and gradual development.</span></div><div style=\"\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\"><br></span></div><div style=\"\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\">Ghana is also regarded as one of the most peaceful countries in the world, with a country that has citizens full of hope and joy. With its sunny beaches, lively cities, friendly people, and easy methods of travelling around the country - Ghana is a great place to visit for tourists.</span></div><div style=\"\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\"><br></span></div><div style=\"\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\">There are 14 regions in Ghana, but it is mainly divided into the Northern and Southern parts. There are beautiful places in Ghana in almost every area.</span></div><div style=\"\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\"><br></span></div><div style=\"\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\">For example, when you go to the southern part of Ghana, you will find attractions like Kakum National Park, and if you head to the northern region, you can discover places like Mole National Park. Continue reading to learn more about these and other attractions!</span></div></div>																																																		<span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\"><div><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px; font-weight: 700;\"><br></span></div>How many tourist sites in Ghana have you visited so far? If you haven’t visited too many, the good news is that there are dozens of beautiful tourist sites in Ghana.</span><span style=\"font-weight: bold;\"><span style=\"color: rgb(33, 37, 41); font-family: OpenSans; font-size: 18px;\">&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: OpenSans;\">Like the cliché goes: Ghana is not just Accra. The capital is beautiful but there are a lot more tourist sites in Ghana’s other regions.&nbsp;</span></span><span style=\"color: rgb(33, 37, 41); font-weight: bold;\">All you need to do is to find the time and explore all these beautiful tourist sites in Ghana. Trust me, the experience will be better if you go with your loved ones.</span><div class=\"ringCommonDetail ringBlockType-paragraph \" style=\"color: rgb(33, 37, 41); font-family: OpenSans;\"><p><span style=\"font-weight: bold;\">In 2019, Ghana was ranked fourth among 19 places with the most interesting tourist sites across the globe.&nbsp;</span><span style=\"font-family: OpenSans; font-weight: bold;\">So, if you are planning your vacation, honeymoon and a weekend getaway, then this article is tailor-made for you.</span></p></div>\r\n										\r\n										\r\n										'),
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
(1, 'Cape Coast Castle', 'Museum', 'Central Region, Ghana', 2000, 'The Cape Coast Castle has served as the West African headquarters of the president of the Committee of Merchants; the seat of the British governor; and a school.', 'The Cape Coast Castle was one of many slave castles built in the Gold Coast. Tourists who visit this castle are made to relive the history of the slave trade. The castle has watershed walls built in the 1550s and serves as a historical museum with Ghanaian arts and crafts gift shop.', 'cape coast  1.jpg', '2017-05-13 14:23:44', '2021-09-04 12:12:15'),
(2, 'Kakum National Park', 'Plants and Animals', 'Central Region, Ghana', 1500, 'The park has some unique species of plants and is home to some other unique animals. These include buffalos, meerkats, civets, elephants and several species of birds.', 'Considered the nation\'s park, Kakum National Park is a destination that every tourist must-see. It has an area of 145 square meters and is located on the coast of southern Ghana (specifically the Central Region of Ghana). The park is home to many endangered animals as well, especially mammals like antelopes and elephants.\r\nThe park also has a canopy walk that is suspended about 30 meters above the ground. The canopy walk can sometimes be scary if you are trying it for the first time, but it shouldn\'t be a problem if you have a sense of adventure. It provides a view above the trees and allows you to appreciate the surrounding nature.', 'kakum.webp', '2017-05-13 15:24:26', '2021-09-04 11:26:18'),
(3, 'Boti Falls', 'Water Falls', 'Eastern Region, Ghana', 1500, 'The waterfall is a three-in-one pack, consisting of the umbrella rock, the three-headed palm tree and the fall.', 'Waterfalls always attract people from all over the country and around the world, and Boti Falls is no different. Located in the Eastern Region of Ghana, 17km northeast of Koforidua, is a Ghana attraction with a history.\r\n\r\nBoti Falls is an integral part of Ghana. According to history, Boti Falls is a twin waterfall, specifically male and female, representing the upper and lower falls.\r\nThe locals believe that when the volume of water from the falls becomes high, it means the two falls are mating, so a mating ceremony is organized. A rainbow is usually formed during the ceremony when there is a continuous splashing of water.', 'boti.webp', '2017-05-13 16:00:58', '2021-09-04 11:30:51'),
(4, 'Lake Volta', 'Water', 'Volta Region', 2000, 'The prominent lake is contained by the Akosombo Dam and used to provide transportation and generate electricity.', 'The Volta Region is the least-visited region in Ghana, even though it has quite a few tourist sites like mountains, waterfalls, and lakes to offer.\r\nLake Volta is located in this region and is the largest artificial lake in the world. With a surface area of 8,502 square kilometers, Lake Volta flows around the whole country.\r\nThe prominent lake is contained by the Akosombo Dam and used to provide transportation. It also generates electricity for the people of Ghana. Volta Lake sustains a serene environment that allows you to feel free and release stress.', 'lake volta.webp', '2017-05-13 22:39:37', '2021-09-04 11:33:44'),
(5, 'Aburi Botanical Gardens', 'Garden', 'Eastern Region', 2300, 'The Garden covers about 160 acres of land area, while its mountains are destinations for persons looking for cool and quiet getaways.', 'Since Ghana is located in Africa, the country and nature benefit from the warmer climate, making the Aburi Botanical Gardens one of the most attractive sites in Ghana!\r\nThe gardens were officially opened in March 1890 and are located in the town of Aburi, hence its name, which is about 30km north of Accra in the Eastern Region of Ghana. The gardens consist of 160 acres, with 157 acres reserved and the 3 acres developed into basic infrastructure.\r\nVisiting the Aburi Gardens is a calming journey that can take your mind off the stress you might be going through in life. Because it is approximately a 45-minute drive from Accra, you can easily travel here to have a picnic with your family and enjoy what nature has to offer.', 'aburi garden.webp', '2017-05-13 22:42:10', '2021-09-04 11:37:12'),
(6, 'Mole National Park', 'Wildlife', 'Northern Region, Ghana', 2000, 'The Mole National Park is the largest wildlife park in the country. Located in the Savannah region, the park is home to many different animals.  These include roan antelopes, buffalos, elephants, hyenas, leopards and over 250 species of birds and other cr', 'Located in the northern part of Ghana, Mole National Park is the habitat of endangered species like elephants, roan antelope, and a few rare birds.\r\n\r\nAs this national park has a land size of 4,840 square kilometres, it is one of the most suitable places to visit when you want to explore nature.\r\n\r\nThis park was the first park reserved by Ghana to conserve wildlife. It protects over 300 bird species, 94 mammals, and several other wildlife creatures.', 'mole.webp', '2017-05-14 08:01:08', '2021-09-04 11:40:53'),
(7, 'Wli Waterfalls', 'Water', 'Volta Region, Ghana', 1400, 'Enjoying the flow of the falls or by swimming in the water', 'When you desire a serene place to visit so you can have a pleasant, relaxing time, then the best landmark to see is a waterfall.\r\n\r\nIn the Volta Region of Ghana, a 5-hour journey when driving from Accra, you can find Agumatsa Falls, also popularly known as Wli Waterfalls. Wli Falls is recognised as the highest waterfall in Ghana and West Africa, making it a top tourist site and one of the most beautiful places to visit in Ghana.\r\n\r\nYou can engage in lots of activities when you visit the Wli Waterfalls. For example, you can choose to relax by enjoying the flow of the falls or by swimming in the water.\r\n\r\nIf you want to challenge yourself, you can go hiking with a guide to the top of the falls. At the top of the falls is the shrine of the lesser gods, which the village ancestors believed to have been brought from Togo.', 'wli.webp', '2021-09-04 11:51:10', NULL),
(8, 'Kintampo Falls', 'Water', 'Brong Ahafo Region, Ghana', 2000, 'The waterfall is shaped like a staircase, whereby the water disappears and resurfaces about 200 meters away from the original location.', 'Another waterfall in Ghana that fascinates visitors to the country is Kintampo Falls. It is located exactly 4km away from Kintampo Township when driving from Kumasi to Kintampo in the Brong Ahafo Region.\r\n\r\nThe waterfall is shaped like a staircase, whereby the water disappears and resurfaces about 200 meters away from the original location.\r\nAt the top of the falls, the view shows you how magnificent nature can be. The scenery and view is the primary attraction of this place.\r\nAfter visiting Kintampo Falls, you can also visit the Boambeng Fiema Monkey Sanctuary, which is located in the same region as well.', 'kintampo falls.jpg', '2021-09-04 11:55:08', NULL),
(9, 'Lake Bosomtwe', 'Water', 'Ashanti Region', 2000, 'Mountains surround the lake, and it serves as a habitat for different fish species. A story is told that the lake was created when a meteorite hit the town.', 'The Ashanti Region of Ghana has many tourist sites that attract thousands of visitors from outside the country.\r\nIn Kumasi, the region\'s capital, you can find the only natural lake in Ghana, Lake Bosomtwe. The lake has an area of about 49 square kilometres and a depth of 70-74 meters. Mountains surround the lake, and it serves as a habitat for different fish species. A story is told that the lake was created when a meteorite hit the town.\r\nYou might be wondering what to do when you visit the famous Lake Bosomtwe in Ghana. You can go fishing, diving, boating, swimming and even hiking in the nearby mountains. There are a lot of activities available to do here; you just have to find one that suits your style.', 'bosomtwe.webp', '2021-09-04 11:56:42', NULL),
(10, 'Larabanga Mosque', 'Mosque', 'Savannah Region', 2000, 'The Larabanga Mosque is the oldest in Ghana and is located in Larabanga in the Northern Region of Ghana (Savannah Region).', 'The Larabanga Mosque is the oldest in Ghana and is located in Larabanga in the Northern Region of Ghana (Savannah Region). It was built in 1421 and is usually referred to as \"the Mecca of West Africa\".\r\nDue to the Mosque\'s rich history, it currently features on the World Monuments Fund\'s \"Watch List of 100 Most Endangered Sites\". The Mosque was inspired by the Sudanese architectural style and made with mud and sticks. Because of its rich history, it is one of the most popular tourist spots in Ghana.\r\nThe history behind the Mosque and how it was constructed is still a mystery. A story is told that a Muslim named Ayuba built the Mosque. He was travelling through the area and needed to rest.\r\nWhen he fell asleep, he dreamt about building a mosque, and after waking up, the foundation had been set, so he completed it from that point. This is the place to be if you are a religious person and want to see one of the most important sacred sites in Ghana.', 'Larabanga.webp', '2021-09-04 12:00:01', NULL),
(11, 'Okomfo Anokye Sword Site', 'Sword', 'Ashanti Region', 2300, 'About 300 years ago, before Okomfo Anokye died, he struck his sword into the ground and pronounced that no one would be able to remove it.', 'Okomfo Anokye is a popular character in the history of the Ashanti Kingdom. He was the first priest of the Kingdom, and through his help, the Ashanti Kingdom expanded and overcame its enemies.\r\nAbout 300 years ago, before Okomfo Anokye died, he struck his sword into the ground and pronounced that no one would be able to remove it.\r\nTo this day, no one has accomplished this, despite many attempts. When you are in Kumasi as a tourist, going to this site should be included on your list of activities to do in Ghana. The site offers insight into the beginning of the Ashanti Kingdom.', 'Sword Site.jpg', '2021-09-04 12:08:18', NULL);

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
(10, 'Anuj Kumar', '4543534534', 'frank', '$2y$10$FpX23Z1wikwNMEfkk9rnB.ziz3GSaO6o4D4JkaickJ/9HrhTYOG5e', '2017-05-14 07:43:23', '2021-09-25 21:07:48'),
(11, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17'),
(12, 'Boadi Frank', '0225555555', 'frank@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-09-25 21:08:42', NULL),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2021-09-25 21:13:45', NULL);

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
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
