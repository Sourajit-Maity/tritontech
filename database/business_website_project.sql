-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 09:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_website_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_id` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `IP`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '127.0.0.1', 'Both systems can be adapted to the Client’s requirements, i.e. microphones, CD player, MP3 player etc, Equaliser, Effects unit etc.  The above solutions are low cost ‘unbalanced’ audio systems covering numerous audio applications.', 'True', '2021-01-16 10:03:25', '2021-01-18 18:25:12'),
(2, 2, 2, '127.0.0.1', 'If the client requires a more expensive ‘balanced’ system this too can be supplied by Berke IT Systems and fully installed to their exact requirements.', 'True', '2021-01-16 10:03:41', '2021-01-16 10:04:06'),
(3, 12, 2, '127.0.0.1', 'Additional features are also available like audible alarms, LED status indicators, user replaceable battery, push-button circuit breakers and transformer-block spaced outlets.', 'True', '2021-01-16 10:05:06', '2021-01-16 10:05:35'),
(4, 13, 2, '127.0.0.1', 'These issues have helped propel thin computing to the forefront, as a cost effective solution which leaves a very small environmental footprint.', 'True', '2021-01-16 10:05:26', '2021-01-16 10:05:38'),
(5, 23, 2, '127.0.0.1', 'High availability solutions allow the business owners to focus on business while uncertainties are handled at ease and no interruption to business.', 'True', '2021-01-16 10:06:39', '2021-01-16 10:07:07'),
(6, 24, 1, '127.0.0.1', 'We can setup reliable disaster recovery (DR) databases / sites as per business requirements.', 'True', '2021-01-16 10:06:58', '2021-01-16 10:07:15'),
(7, 1, 1, '127.0.0.1', 'Not only because projection technology can give some of the crispiest, clearest images, but because the sky can literally be the limit when it comes to image size.', 'True', '2021-01-16 10:14:07', '2021-01-16 10:14:19'),
(8, 2, 1, '127.0.0.1', 'Remember – whatever your requirements, we have the solution for you and your business.', 'True', '2021-01-16 10:15:04', '2021-01-16 10:15:17'),
(9, 13, 1, '127.0.0.1', 'For businesses looking to start and build out their server network, including connectivity and providing the ability to grow with their business.', 'True', '2021-01-16 10:16:22', '2021-01-16 10:16:55'),
(10, 12, 1, '127.0.0.1', 'HP expandable tower servers are ideal for remote and branch offices in need of low-risk networking, file-and-print and shared Internet access solutions, and provide maximum internal storage and I/O flexibility.', 'True', '2021-01-16 10:16:32', '2021-01-16 10:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `keywords`, `description`, `image`, `menu_id`, `user_id`, `type`, `detail`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Electrical Switchgear', 'audio, solutions', 'Triton Tech  can provide a full bespoke audio system to suit your business needs.', 'images/slider-01.jpg', 2, 1, 'Menu', '<p style=\"margin-bottom: 10px;\"><span lang=\"en-GB\" style=\"\"><b>Constant Voltage or High Impedance</b></span><span lang=\"en-GB\" style=\"\">&nbsp;Bespoke 100v line audio system. Used mainly for PA and background music. Enables several speakers to be connected to one Amplifier or Mixer/Amp, to give audio in different areas. Can also be ‘Zoned’. Common applications would be in hotels or offices.</span></p><p style=\"margin-bottom: 10px;\"><span lang=\"en-GB\"><b>Low Impedance (4 or 8ohm)</b>&nbsp;Bespoke audio system generally 2-4 speakers connected to high power Amplifier/Zone Amp, dependant on requirements. A mixer or Mixer/Amp is also incorporated into the system. Main applications are pubs, clubs, churches &amp; large halls.</span></p><p style=\"margin-bottom: 10px;\"><span lang=\"en-GB\" style=\"\">Both systems can be adapted to the Client’s requirements, i.e. microphones, CD player, MP3 player etc, Equaliser, Effects unit etc.&nbsp; The above solutions are low cost ‘unbalanced’ audio systems covering numerous audio applications.</span></p><p style=\"margin-bottom: 10px;\"><span lang=\"en-GB\" style=\"\"><br></span></p><p style=\"margin-bottom: 10px;\"><b>Balanced Systems</b></p><p style=\"margin-bottom: 10px;\"></p><p>If the client requires a more expensive ‘balanced’ system this too can be supplied by Complete IT Systems and fully installed to their exact requirements.</p><br><p></p><div><br></div>', 'True', '2021-01-15 19:02:27', '2021-01-15 19:05:54', 'audio-solutions'),
(2, 'PLC Scada Modules', 'installations, audio, system', 'Triton Tech is rapidly becoming a leading Audio Visual systems integrator and service provider.', 'images/slider-02.jpg', 2, 1, 'Menu', '<p style=\"margin-bottom: 10px;\"><b>AV </b>and <b>IT </b>are increasingly becoming more entwined and we at Berke IT Systems draw on our technical expertise observed elsewhere on our site, to excel at projects requiring converged AV and IT solutions.</p><p style=\"margin-bottom: 10px;\">This includes but is not limited to digital signage, video conferencing and distributed voice and video to the desktop.</p><p style=\"margin-bottom: 10px;\">Extra network points and electrical spurs are no problem as our engineers are industry qualified for those too.</p><p style=\"margin-bottom: 10px;\">From the simplest single screen install to complex audio visual systems, we can offer a full project methodology from specification and design through to installation and integration. We can also provide training, maintenance and support for the majority of the solutions we offer.</p><p style=\"margin-bottom: 10px;\">With authorised engineers for Smart, Hitachi and Promethean to hand, we provide friendly, reliable service with competitive rates to all sector.</p><p style=\"margin-bottom: 10px;\">Berke IT Systems has the experience and the skills to make your project run smoothly, on time and on budget.</p>', 'True', '2021-01-15 19:05:32', '2021-01-15 19:05:32', 'installations'),
(4, 'IOT solution', 'buying, confidence', 'Our partnerships with market leading vendors and suppliers helps Berke IT Systems bring you..', 'images/slider-03.jpg', 4, 1, 'Menu', '<p style=\"margin-bottom: 10px;\">Berke IT Systems can provide the latest technology available to you as a valued business partner.</p><p style=\"margin-bottom: 10px;\">You can have the confidence knowing that Berke IT Systems will provide solutions and technology which is not only affordable and good value for money, but also be able to support and help you manage that technology.</p><p style=\"margin-bottom: 10px;\">Through our extensive vendor relationships we can ensure that you will have a wide range of products available and that your dedicated account manager will help you assess the right technology for your needs. Berke IT Systems can also if required provide installation services and help maintain that technology. Procurement Services available include Imaging, Build, Software Installation, on-site installation followed by support.</p><p style=\"margin-bottom: 10px;\">Our partnerships with market leading vendors and suppliers helps Berke IT Systems bring you, the confidence and knowledge that our procurement team have the right expertise and training to help you buy for all your IT requirements.</p>', 'True', '2021-01-15 19:16:24', '2021-01-15 19:16:32', 'buying-with-confidence'),
(34, 'Solar Products', 'Solar Products', 'Solar cells or “photo-voltaics” do not use a generator, they are the generator usually arranged in panels, these devices take advantage of the ability of light to cause a current flow in some substance. A series of cells wired together and the current flows from the panel when sunlight strikes it. They produce no pollution when operating. We are regularly introducing new and innovative products to sustain our market leadership.', 'images/K5oDEb4grUbrk1kceQCJKYcwz6HKzSD56eKby8Eb.jpg', 0, 1, 'News', '<p>Solar cells or “photovoltaics” do not use a\r\ngenerator, they are the generator usually\r\narranged in panels, these devices take\r\nadvantage of the ability of light to cause a\r\ncurrent flow in some substance. A series of\r\ncells are wired together and the current flows from\r\nthe panel when sunlight strikes it. They\r\nproduce no pollution when operating. We are\r\nregularly introducing new and innovative\r\nproducts to sustain our market leadership.<br></p>', 'True', '2022-08-08 13:36:58', '2022-08-08 13:36:58', 'solar-products');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How much do your managed IT services cost?', 'It all depends on the number of users, computers, and servers you have in your workplace. After speaking with you about your requirements, Berke IT Systems will put together a custom proposal that covers all of your equipment and provides the services needed to keep your business running smoothly on a daily basis.', 1, 'True', '2021-01-15 11:52:26', '2021-01-15 11:55:39'),
(2, 'What is covered in your managed services plan?', '<p>Our managed services plan covers 24/7 monitoring and maintenance of your server equipment as well as monitoring and maintenance of your workstations during regular business hours. The core components of every support plan are:<br></p>', 2, 'True', '2021-01-15 11:53:00', '2021-01-15 11:53:00'),
(3, 'How do we get hold of you when we have an issue?', 'If you’re a current client and have a tech problem, you can call the main office number and speak with an engineer right away. You can also email our engineering team at&nbsp;<a href=\"mailto:armor@lekcomp.com\" style=\"background: rgb(255, 255, 255); transition-duration: 0.1s; transition-timing-function: ease-in-out; font-family: Poppins, sans-serif; font-weight: 400;\">c</a>ontact@berkeitsystems.com . If your issue arises after hours and you are a contracted customer, you can call the after-hours support line and an engineer will answer the phone (or call you right back if you leave a voicemail message).&nbsp;', 3, 'True', '2021-01-15 11:54:09', '2021-01-15 11:54:09'),
(4, 'What can your Help Desk assist with?', '<p>Our Help Desk can assist with a variety of issues, such as problems with a Microsoft Office product or other business applications (as long as you maintain a support agreement with the software vendor).<br></p>', 4, 'True', '2021-01-15 11:54:38', '2021-01-15 11:54:38'),
(5, 'What kind of contract or commitments do we have to make to get started?', '<p>Berke IT System’s standard client contract is a three-year agreement with an easy-out clause. It says “Client shall have the right to, at their discretion, terminate this Agreement for any reason as long as a 30-day notice has been provided.”</p><p><br></p>', 5, 'False', '2021-01-15 11:55:25', '2021-01-15 11:55:25'),
(6, 'I can handle my IT in-house. Why would I want to pay you to do it?', '<p>We get it — adding another line item to your business budget can be unnerving. But the truth is, handling your own tech issues is already costing you. That’s because your time is valuable. Could you be earning more money every day by doing what you do best — and letting Berke IT Systems handle the rest? Contact us today to see what we can do for your business productivity — and your bottom line.<br></p>', 6, 'True', '2021-01-15 11:56:36', '2021-01-15 11:56:36'),
(7, 'Our office computers are running slow. Can you help with this?', '<p>Absolutely! Making sure your entire IT Environment is running efficiently is what we do. This is not a double click or snap your fingers type of thing though. We typically see that most issues with speed are due to years of neglect by other IT Companies. During our onboarding process and the first several months, we dive deep into your systems, find the gaps or bottlenecks and resolve them as best as they can be. Once your systems go through a deep preventative maintenance cycle, our monitoring and maintenance service will keep them running to their peak performance. Typically for older servers and computers, we recommend moving to a Solid-State Hard Drive, the speed will amaze you!&nbsp;<br></p>', 7, 'True', '2021-01-15 11:57:53', '2021-01-15 11:57:53'),
(8, 'Can you recommend and/or purchase hardware and software for my company?', '<p>Over the last decade we have built relationships with many large and well-known distributors that offer us the discount to pass on to our clients. We can usually meet or beat advertised prices on hardware, software and we are always happy to offer unbiased product recommendations. We also offer a financing option with a great leasing company that understands the IT industry and it change cycles.<br></p>', 8, 'True', '2021-01-15 11:59:32', '2021-01-15 13:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `content_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(3, 6, 'test', 'images/x51jn7vaixBQa3lKr1RdOcGxvuqdmrW49rRZoFej.jpg', '2022-08-07 23:16:35', '2022-08-07 23:16:35'),
(4, 26, 'test', 'images/fOdFE4TlEN84L9ygjFCTXJCcambsnVoARQmHMWJU.png', '2022-08-08 01:11:31', '2022-08-08 01:11:31'),
(5, 32, 'test', 'images/9Dxuzkon8fm6BBVdrCXecRBY7AjGmNnDSRX8CQtA.png', '2022-08-08 01:15:01', '2022-08-08 01:15:01'),
(6, 33, 'gd', 'images/8Hf0Vsr8OnupzLGcLjoEexYarTDXbbVjg3y3g3zi.jpg', '2022-08-08 01:24:12', '2022-08-08 01:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 0, 'Services', 'services', 'Our Services', 'images/xG3089F7GV2us3s0j82UdF3Acn63brZI9LoHm8BU.png', 'True', '2021-01-14 10:46:44', '2022-08-08 08:58:54', 'services'),
(2, 1, 'HT Panels', 'HT panels', 'HT panels are compact outdoor type systems, which are broadly used in substations. Our product range is prepared from Circuit Breakers or switch fuse on HT side, which protects the equipment from sudden voltage fluctuations.', 'images/U7CEm5hLNa15aKxbAu8EuEBS71aKMLWtubSOpHuw.png', 'True', '2021-01-14 11:08:40', '2022-08-08 09:00:26', 'ht-panels'),
(3, 1, 'LT Panels', 'LT Panels', 'LT Panel is an electrical distribution board that receives power from generator or transformer and distributes the same to various electronic devices and distribution boards', 'images/AKxXXJvuMj8jpO0Sl5nWhFcwUcpyGA9IYuKbR6gK.jpg', 'True', '2021-01-14 11:32:35', '2022-08-08 09:02:15', 'lt-panels'),
(4, 1, 'PLC Modules Microcontrollers', 'PLC Modules,Microcontrollers', 'A Programmable Logic Controller(PLC) or Micro Controller is an industrial computer control system that continuously monitors the state of input devices and makes decisions based upon a custom program to control the state of output devices.', 'images/t1evJVFFtkAPorzCumB6TZGdhuOWtfLQPQmiHrbN.jpg', 'True', '2021-01-15 09:27:07', '2022-08-08 09:03:50', 'plc-modules'),
(5, 1, 'DC Drive', 'DC Drive', 'Tough industrial applications from rolling out steel to turning a cement kiln require equally tough products. And that’s the idea that went into our DCS800 industrial DC drives. From wire drawing to running cable cars, our DC drives give you the dayto-day reliability and performance you except with the flexibility to meet your unique process.', 'images/axQHeIEn429WqaE8n2SmMkbfgMcUei5HHqRqjjaK.jpg', 'True', '2021-01-15 09:27:52', '2022-08-08 09:14:53', 'dc-drive'),
(6, 1, 'VFD AC Drive', 'VFD AC Drive', 'VFD’s are used in applications ranging from small applications to large compressors. About 25% of the world’s electrical energy is consumed by electric motors in industrial applications, which can be more efficient when using VFDs in centrifugal load service.', 'images/kJEvoquGNFfNmyKc0ffQTGgIGhzIVK6SbBoWbwJC.jpg', 'True', '2021-01-15 09:28:27', '2022-08-08 09:15:54', 'vfd-ac-drive'),
(7, 1, 'Soft Starter Module', 'Soft Starter Module', 'Our Smart Motor controllers are soft starters that are designed to help minimize cost by reducing overall system power requirements and wear and tear on equipment. Our soft starters can be easily integrated into your intelligent motor control solution to offer higher productivity', 'images/Z4fW9FfcJtKynWFgIeJjycGET5EVIfhmM3Bwg2z0.jpg', 'True', '2021-01-15 09:29:16', '2022-08-08 09:16:55', 'soft-starter-module'),
(8, 1, 'MCC PCC LDB Panels', 'MCC,PCC,LDB Panels', 'MCC means motor control center. It is used to control motor feeder. PCC means power control center. MCC feeds from the PCC panels and PCC feeds directly from the transformer. The design of the PCC/MCC panel is robust and rigidly constructed to suit a wide range of industries and buildings.', 'images/YV8zyGVpC2YZiPCD6AmL4XWeowOTNjxG7BQTvq9m.jpg', 'True', '2021-01-15 09:29:50', '2022-08-08 09:18:09', 'mcc-Panels'),
(9, 1, 'Control Panels – Drive PLC', 'Control Panels ,Drive PLC', 'Programmable Logic Controllers (PLCs) are small industrial computers with modular components designed to automate customized control processes. PLCs are often used in factories and industrial plants to control motors, pumps, lights, fans, circuit breakers and other machinery. Integrated PLC Panel can monitor any process and provide data wherever and however you need it.', 'images/bn8swROtziuC4eoGbcZoEBV8klX1NYyhvHH0wHB9.jpg', 'True', '2021-01-15 09:30:55', '2022-08-08 09:18:54', 'drive-plc'),
(10, 0, 'Support', 'support', 'We can provide you with the IT Support solution your company needs.', 'images/uNejpXEssX7y3Tq9Nmw6JNBrlzSGW9uQMpD5VKy2.jpg', 'True', '2021-01-15 09:32:02', '2022-08-08 09:26:01', 'support'),
(11, 10, 'Worldwide IT Support', 'worldwide,  it, support', 'We can provide you with all your Worldwide IT Support.', 'images/JW3sczuc2w2Jwl6Uh7RJmgrWYagxbxs84H9CbsNh.jpg', 'True', '2021-01-15 09:32:55', '2022-08-08 09:26:18', 'worldwide-it-support'),
(12, 0, 'IT Hardware & Infrastructure', 'it-hardware-infrastructure', 'Including Storage, Backup, Virtualization, Printers and Consumables.', 'images/jKd2rOUiZi2FcskrG6YXzxP7ANpvGbYXj65AjNfO.jpg', 'True', '2021-01-15 09:38:52', '2022-08-08 09:26:49', 'it-hardware-infrastructure'),
(13, 0, 'Reseller', 'reseller', 'Triton Tech reseller partners play a vital role in our business, providing sales, solution implementation, integration, technical support, and value-added services to customers', 'images/QiW1OF169LS7TDDI2XMQhJgNACXYwhvQtPUgsGaC.jpg', 'True', '2021-01-15 12:56:59', '2022-08-08 09:25:20', 'reseller'),
(14, 13, 'Reseller Partner Benefits', 'reseller benefits', 'Berke IT Systems distribution business unit has formed partnerships and alliances with selected technology...', 'images/xKvNaeOfgqJ65rJrs7YZEaAjlCtE52leaw2PBw7P.jpg', 'True', '2021-01-15 12:58:17', '2022-08-08 09:26:33', 'reseller-benefits'),
(15, 0, 'Our Products', 'our products', 'Big Data & IoT (Internet of Things), are two sides of the same coin. With easy connectivity among humans & devices (IoT), speed of data generation is getting multi-fold (BigData), increasing exponentially in volume and is getting more complex in nature.', 'images/b1cTHiTUNxo5Ic7UVkYUH7lTNnCV3T3RI1SZNtAR.jpg', 'True', '2021-01-15 12:59:52', '2022-08-08 09:27:37', 'our-products'),
(16, 15, 'Solar Products', 'Solar Products', 'Solar cells or “photo-voltaics” do not use a generator, they are the generator usually arranged in panels, these devices take advantage of the ability of light to cause a current flow in some substance. A series of cells wired together and the current flows from the panel when sunlight strikes it. They produce no pollution when operating. We are regularly introducing new and innovative products to sustain our market leadership.', 'images/6yRZiJcdk4TgRvyw5WRGFWcAszwDeN81Khavc4pg.jpg', 'True', '2021-01-15 13:00:43', '2022-08-08 09:20:40', 'solar-products'),
(17, 15, 'Shutter Alarm', 'Shutter Alarm', 'Shutter Protect is a typically designed tailor made safety device for the total protection of unauthorized entry into your shops, warehouse etc. By breaking the shutter, even by few inches or getting shutter cut from middle with gas cutter. It gives direct alert on 5 registered mobile numbers via SMS and Call. You can easily operate this system via App.', 'images/zitiHEPEVijF3FUKCXTfM6o8XXun2BSnsL9d6o4O.jpg', 'True', '2021-01-15 13:01:48', '2022-08-08 09:21:41', 'shutter-alarm'),
(18, 15, 'Portable ECG Measuring KIT', 'Portable ECG Measuring KIT', '1. ECG machine and android application is mainly designed for general household use, hospitals and clinics. 2. 2. Requires no battery, no internet, and no radiation. 3. 3. 12 lead ECG monitoring. 4. 4. Live ECG monitoring for any leads for more than 24 hours. 5. 5. Printable ECG reports on normal A4 size papers. 6. 6. Zoom in the ECG trace up to 50x. 7. 7. Unlimited Interpreted ECG Reports. 8. 8. Automate routine data analysis and complex calculations. 9. 9. Detect ST abnormalities and MI.', 'images/J9dSmE6hFjaS9VkuexebEq2vKD8YTKhfjYKJUPtF.jpg', 'True', '2021-01-15 13:07:53', '2022-08-08 09:22:37', 'Portable-ecg-measuring-kit'),
(19, 15, 'Bio Medical Chair', 'Bio Medical Chair', 'By this chair you can easily check up all the medical facilities at home also you will be able to generate report for all medical tests generated.', 'images/v5q1Jepkdw7FNBhz6XKIzXfm0t2kMDf3HyH68g1y.jpg', 'True', '2021-01-15 13:08:29', '2022-08-08 09:23:27', 'bio-medical-chair'),
(20, 15, 'Big Data & IoT', 'big data, iot', 'Big Data & IoT (Internet of Things), are two sides of the same coin.', 'images/cDG6TgMUEu73caPekmIPIlkYJGPrvxqfLxIm0AqT.jpg', 'True', '2021-01-15 13:12:35', '2022-08-08 09:27:57', 'big-data-iot'),
(21, 0, 'Cloud & Infrastructure & web solution', 'cloud infrastructure', 'We culminate cloud computing in your business in a way so that you not only enjoy the benefits of cloud computing, but the transformation is seamless and cost-effective in relation to the benefits accrued from it.', 'images/UQNLniOh3VDBKycN3fWUtVegnUAY1g3ZKvyQxR3l.jpg', 'True', '2021-01-15 13:51:02', '2022-08-08 09:31:39', 'cloud-infrastructure'),
(22, 15, 'RFID based Security System', 'RFID based Security System', 'This is one type of security device based on RFID, with this device you can easily secure your valuable products like gold, diamond and many such precious things. If any error occurs user will receive an alarm. This product is customizable. From this device you can also get Store management system application.', 'images/BG1GDDT2KU5rr6VidBkuYbfh06sC4eSKLxrZJOeT.jpg', 'True', '2021-01-15 18:47:34', '2022-08-08 09:24:45', 'rfid-based-security-system'),
(23, 21, 'Web App', 'Web app', 'Moving to the cloud can result in immense benefits for your company. However, there are several factors that have to...', 'images/GWC61ddyRP6UREtlB59qjKIj7X9CYmziK2KnnFay.jpg', 'True', '2021-01-15 18:49:32', '2022-08-08 09:30:08', 'cloud-platform-support'),
(24, 21, 'Mobile App', 'mobile app', 'Microsoft System Center Configuration Manager (SCCM) is a Windows product that enables administrators to manage the deployment and security of devices and applications across an enterprise.', 'images/GewMAdz4oxMaDGuHffvMu5D9pxIPe72fBvCRa4cj.jpg', 'True', '2021-01-15 18:50:41', '2022-08-08 09:31:01', 'mobile-app'),
(26, 10, 'Network Support', 'network, support', 'Our support packages are tailored to meet the exact needs of each individual customer and include software and technical support...', 'images/qi160HldKqTNdD8TBSTajhyF8D0FlTL1HjCBuVki.jpg', 'True', '2021-01-15 18:58:21', '2022-08-08 09:28:27', 'network-support'),
(27, 1, 'APFC Panels', 'APFC Panels', 'APFC or Automatic Power Factor Control panels are mainly used for the improvement of power factor. Power factor can be explained as ratio of active power and apparent power and it is a key factor in measuring electrical consumption. It becomes almost important to cut down on electrical consumption for reducing expenditure.', 'images/qCknD8xtDdPzzbyXfVj9bhDbwK4tUPE8MEANCrfu.jpg', 'True', '2022-08-08 09:19:48', '2022-08-08 09:19:48', 'apfc-panels');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John M. Mills', 'JohnMMills@rhyta.com', '585-798-3169', 'IT Question', 'How you manage IT is critical to your competitiveness. Why?', '<p>You can see the answer on the FAQ page.</p>', 'Read', '2021-01-16 11:34:43', '2021-01-18 18:27:40'),
(2, 'Joseph E. Franco', 'JosephEFranco@jourrapide.com', '817-942-5424', 'Company Goals', 'What are the company\'s overall goals for this year?', NULL, 'New', '2021-01-16 11:37:58', '2021-01-16 11:37:58'),
(3, 'Marlene J. Pyle', 'MarleneJPyle@jourrapide.com', '516-636-1740', 'Company Events', 'Does the company ever hold out-of-the-office events?', NULL, 'New', '2021-01-16 11:38:58', '2021-01-16 11:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_05_113107_create_sessions_table', 1),
(7, '2020_12_26_135712_create_menus_table', 2),
(8, '2020_12_26_140443_menu', 3),
(9, '2020_12_29_203006_create_contents_table', 4),
(10, '2020_12_29_203921_content', 4),
(11, '2021_01_01_133033_create_images_table', 5),
(12, '2021_01_01_133442_image', 5),
(13, '2021_01_03_111805_create_settings_table', 6),
(14, '2021_01_03_122139_setting', 6),
(16, '2021_01_10_124535_add_address_to_users', 7),
(17, '2021_01_10_151634_add_address_to_menus', 8),
(18, '2021_01_10_151814_add_address_to_contents', 9),
(19, '2021_01_10_160624_create_messages_table', 10),
(20, '2021_01_10_160949_message', 10),
(23, '2021_01_11_223425_create_comments_table', 12),
(24, '2021_01_11_223818_comment', 12),
(25, '2021_01_13_193209_create_faqs_table', 13),
(26, '2021_01_13_195016_faq', 13),
(27, '2021_01_16_140805_add_address_to_settings', 14),
(28, '2021_01_18_175951_create_roles_table', 15),
(30, '2021_01_18_180201_roles', 16),
(31, '2021_01_18_180414_create_role_user_table', 16),
(32, '2021_01_18_181310_role_user', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3KmomlUSVT9c4wXy92wv0JvfbZtrgjol1pCGE12y', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiV2dsbUVYekZEZVlTbkhENmtucGZHSkNrdnVLdVZlOXlZUFlsODBUTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250ZW50LzM0L3NvbGFyLXByb2R1Y3RzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRwaGl0RzZwU3FmRS9qWHRQcG5EbUEuUWdWbTVKc3UuWjZzMDRRRDFwRjVHU2tBbWpJY3Q1LiI7fQ==', 1659985633);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT 0,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `homepage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `aboutus`, `contact`, `references`, `status`, `created_at`, `updated_at`, `homepage`) VALUES
(1, 'Triton Tech Enterprize', 'triton tech enterprize, it systems, it systems engineer, it systems manager, it systems administrator, it systems analyst, it systems architect, procurement, security, virtualisation, support', '2022 / Because your safety is not optional', 'Triton Tech Enterprize', '144/1, PLAZA HOUSING, SHIBRAMPUR,', '+91 9903748648', NULL, 'tritontech22@gmail.com', '192.168.0.1', 'smtp@mail.com', '123', 0, 'http://www.facebook.com/berkeitsystems', 'http://www.instagram.com/berkeitsystems', 'http://www.twitter.com/berkeitsystems', '<div><b><font color=\"#085294\">Triton Tech Enterprize</font></b></div><div><b><br></b></div><div><div>We provide professional IT services and distributed cutting-edge technology in America and Europe, consistently delivering business value with the latest technology.</div></div><div><br></div><div><p style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 20px;\"><span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\">Berke IT Systems&nbsp;is a privately owned IT Solution Provider and Distributor founded in 2011 on the island of Kos to provide innovative IT Solutions and Services to the public and private sectors, with a focus on medium and large enterprises in America&nbsp;and Europe.</span></p><p style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 20px;\">Berke IT System<span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\">s operate in the fields of IT Integration Services, Project Management and Distribution of innovative IT Security and Network Solutions.</span></p><p style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 20px;\"><span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\">Basic aim is to contribute through innovative IT Solutions and value added Services to the modernization of medium and large enterprises, so that they remain competitive and operate more effectively and efficiently.</span></p><p style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 20px;\"><span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\">Berke IT System<span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\">s&nbsp;</span>supports its customers primarily as a technical adviser analyzing and reorganizing business process and IT Environments based on the actual needs of the customer and protecting their Systems and Network Infrastructures with cutting edge IT Security &amp; Network Technologies.</span></p><p style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\"><span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\">At the same time Berke IT System<span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased;\">s&nbsp;</span>takes over the supply, installation, configuration and maintenance of modern IT Solutions.</span></p><p style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(98, 119, 146); font-family: &quot;Open Sans&quot;;\"><span style=\"text-rendering: optimizelegibility; outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\"><br></span></p></div><div><div><b><font color=\"#085294\">The perfect cooperation for your success</font></b></div><div><br></div><div>To ensure your company remains in tune with the latest developments in the fast-moving digital age, we have designed an integrated portfolio with a focus on four cornerstones – connectivity, digital, cloud &amp; infrastructure, and security.</div><div><br></div><div><div><b><font color=\"#085294\">Excellence</font></b></div><div><br></div><div>What makes us proud? The success of our clients, the outstanding competence and passion of our employees, strong partnerships, and the appreciation of top analysts and consultancy firms.</div><div><br></div><div><div><b><font color=\"#085294\">Join us in defining the digital transformation!</font></b></div><div><b><br></b></div><div><b><font color=\"#ff9c00\">How can we make your company digitally future proof?</font></b></div></div></div></div><div><br></div>', '<p style=\"text-align: left;\"></p><h3><font color=\"#085294\">Contact Details</font></h3><h4><span style=\"color: rgb(102, 102, 102); font-size: 16px; font-weight: 400;\">Plaza Housing, Shibrampur</span><br></h4><p>Kolkata, KOL 700061</p><p><br></p><p><span style=\"font-weight: bolder;\">P</span>: +91 9903748648<br></p><p><span style=\"font-weight: bolder;\">F</span>: +91 9163521032&nbsp;<br></p><p><b>E</b>: tritontech22@gmail.com<br></p><p><b>H</b>: Monday - Friday: 9:00 AM to 5:00 PM</p><p></p><p></p><p></p>', '<p></p><div><font color=\"#085294\"><b>Globally connected with strategic partners</b></font></div><div><font color=\"#085294\"><b><br></b></font></div><div>Partnerships with leading technology and software enterprises are among the many strengths of Berke IT Systems.</div><div><br></div><div><div><b><font color=\"#085294\">Benefits for our customers</font></b></div><div><b><font color=\"#085294\"><br></font></b></div><div>By collaborating with specialists in joint development projects, not to mention in technology and sales alliances, we are expanding our target markets and creating genuine benefits for you as our valued customer.</div><div><br></div><div><b><font color=\"#085294\">Certified partners</font></b></div><div><b><font color=\"#085294\"><br></font></b></div><div>Best-in-class solutions are based on the best components available in all segments. The purpose of our partnerships is to pave the way to digitization and promote growth and innovation for your business enterprise. Berke IT Systems&nbsp;is certified to participate in key strategic partner programs conducted by industry leaders such as SAP and Microsoft. What\'s more, to ensure that our high quality standards are met, we have certified more than 20 partners who contribute to our own Zero Outage Program for optimizing quality and improving customer satisfaction. Our customers expressed their appreciation of our efforts by awarding us 87 points in the TRI*M survey conducted in 2018 (in the best 10 percent of the European ICT benchmark).</div><div><br></div><div><font color=\"#ff9c00\"><b>We look forward to your project!</b></font></div></div><p></p><p><span class=\"a-nobr-expr\"><br></span></p><p><br></p><p><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Samsung_wordmark.svg/220px-Samsung_wordmark.svg.png\" style=\"width: 220px;\">&nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Foxconn_logo.svg/220px-Foxconn_logo.svg.png\" style=\"width: 220px;\">&nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Microsoft_logo_%282012%29.svg/250px-Microsoft_logo_%282012%29.svg.png\" style=\"width: 250px;\">&nbsp; &nbsp; &nbsp;<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Alphabet_Inc_Logo_2015.svg/220px-Alphabet_Inc_Logo_2015.svg.png\" style=\"width: 220px;\">&nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Huawei_Standard_logo.svg/100px-Huawei_Standard_logo.svg.png\" style=\"width: 100px;\"></p><p><br></p><p><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hitachi_Logo.svg/220px-Hitachi_Logo.svg.png\" style=\"width: 220px;\">&nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Sony_logo.svg/220px-Sony_logo.svg.png\" style=\"width: 220px;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Intel_logo_%282020%2C_dark_blue%29.svg/165px-Intel_logo_%282020%2C_dark_blue%29.svg.png\" style=\"width: 165px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/250px-Google_2015_logo.svg.png\" style=\"width: 250px;\"><br></p><p></p>', 'True', '2021-01-03 09:22:03', '2022-08-08 09:54:08', '<p style=\"margin-bottom: 10px;\"><span style=\"color: rgb(8, 82, 148); font-weight: bolder;\">Welcome to&nbsp;Triton Tech</span><br></p><p style=\"margin-bottom: 10px;\"><font color=\"#ff9c00\"><b><br></b></font></p><p style=\"margin-bottom: 10px;\"><font color=\"#ff9c00\"><b>During the last decade, Triton Tech has become a leading provider of IT solutions, products and services across the America and Europe.</b></font></p><p style=\"margin-bottom: 10px;\"><font color=\"#ff9c00\"><b>Customers can select from the widest range of the latest and most robust Information Technology products available.</b></font></p><p style=\"margin-bottom: 10px;\"><font color=\"#ff9c00\"><b>Partnership with our clients is a key element of our success.</b></font></p><p style=\"margin-bottom: 10px;\"><br></p><p style=\"margin-bottom: 10px;\">We at Berke&nbsp;IT Systems cater for all types and sizes of businesses and can provide your company with the right business solution. Whether it’s every day consumables or a fully installed and supported enterprise storage solution, we are here to fulfill all your IT needs and help bring your project in on time and under budget.</p><p style=\"margin-bottom: 10px;\">As a complete solutions provider we have top level accreditations from the major tier 1 vendors and provide top quality accredited installation and support staff. Berke&nbsp;IT Systems have strong partner relationships, these include Hewlett Packard, Microsoft, Cisco, IBM, Dell, VMware,Kaspersky Lab, Citrix, Sophos&nbsp;plus many more.</p><p style=\"margin-bottom: 10px;\">Our Professional Services team is highly accredited and experienced in projects large and small.</p><p style=\"margin-bottom: 10px;\">As a Berke&nbsp;IT Systems Ltd customer you will receive a dedicated senior account manager who will build a long and successful business partnership.</p><p style=\"margin-bottom: 10px;\"><font color=\"#ff9c00\"><b><br></b></font></p><p style=\"margin-bottom: 10px;\"><font color=\"#ff9c00\"><b> Simplicity, cost effectiveness and reliability are the cornerstones of our success.</b></font></p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 'Sourajit', 'tritontech22@gmail.com', NULL, '$2y$10$phitG6pSqfE/jXtPpnDmA.QgVm5Jsu.Z6s04QD1pF5GSkAmjIct5.', NULL, NULL, '6viuVO5tyLwodhafCc3iNTfOrSibKoBUgzoPfJ3zOgUfEmzc6jZyrDveRqbD', NULL, 'profile-photos/rAN1Uey9UdAjfnS3v3zPNySmd1K3QIO5QqgNh9Gk.png', '2021-01-12 10:22:08', '2022-08-08 02:08:47', '9903748648', 'Plaza Housing,Shibrampur'),
(2, 'Rob Daniel', 'robdaniel@hotmail.com', NULL, '$2y$10$3VdpOtrRgfVzQpYgkhUOJev0JzASZaosANNC/2tupFPrZ2gRAmiJi', NULL, NULL, NULL, NULL, 'profile-photos/XvbZlWD7debSFsedMf5kkSfSCsV7XD4NmiXkSld3.png', '2021-01-16 09:52:39', '2021-01-16 09:54:04', '+1 843-737-6180', '2128 Pendergrass Ln, Mt Pleasant, SC 29464, United States');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
