-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 05:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dentalclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, ' VARGHESE  P ROY ', 'vargheseproy254@gmail.com', 'varghese123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointmentrequest`
--

CREATE TABLE `tbl_appointmentrequest` (
  `appointment_id` int(11) NOT NULL,
  `dentist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL DEFAULT current_timestamp(),
  `apointment_details` varchar(200) NOT NULL,
  `appointment_time` time NOT NULL DEFAULT current_timestamp(),
  `appointment_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appointmentrequest`
--

INSERT INTO `tbl_appointmentrequest` (`appointment_id`, `dentist_id`, `user_id`, `service_id`, `appointment_date`, `apointment_details`, `appointment_time`, `appointment_status`, `status`) VALUES
(61, 14, 43, 18, '2022-11-16', 'gfdsa', '14:58:00', 4, 1),
(62, 16, 43, 8, '2022-11-16', 'qwd', '16:17:00', 4, 1),
(63, 16, 43, 8, '2022-11-16', 'sa', '15:21:00', 2, 1),
(64, 16, 43, 8, '2022-11-16', 'fds', '16:23:00', 4, 1),
(65, 16, 43, 8, '2022-11-16', 'fgh', '16:34:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(11) NOT NULL,
  `booking_date` varchar(100) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `booking_amount` int(11) NOT NULL DEFAULT 0,
  `booking_for_date` varchar(50) NOT NULL,
  `booking_address` varchar(100) NOT NULL,
  `booking_contact` varchar(20) NOT NULL,
  `booking_pin` varchar(40) NOT NULL,
  `booking_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `booking_date`, `user_id`, `booking_amount`, `booking_for_date`, `booking_address`, `booking_contact`, `booking_pin`, `booking_status`) VALUES
(111, '2022-11-16', 43, 220, '2022-11-23', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '234567890', '1234567890', 1),
(112, '2022-11-16', 43, 220, '2022-11-25', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '1234567894', '123554', 1),
(113, '2022-11-16', 43, 220, '2022-11-23', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '2345678o', '23456789', 1),
(114, '2022-11-17', 68, 36, '2022-11-17', '\"Darshan Enclave,flat no:6D,Vadakkenda P O,Aluva\"  ', '1234567890', '234567890', 1),
(115, '2022-11-16', 43, 220, '2022-11-17', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '234567890', '1234567890', 1),
(116, '2022-11-16', 43, 220, '', '', '', '', 1),
(117, '2022-11-16', 43, 220, '2022-11-24', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '9400893288', '123456', 1),
(118, '2022-11-16', 43, 220, '2022-11-20', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '7559012043', '682314', 1),
(119, '2022-11-16', 43, 220, '2022-11-25', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '9400893288', '123456', 1),
(120, '2022-11-16', 43, 220, '', '', '', '', 1),
(121, '2022-11-16', 43, 220, '2022-11-27', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '9400893288', '123456', 1),
(122, '2022-11-16', 43, 220, '2022-11-29', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '9544312043', '123456', 2),
(123, '2022-11-17', 68, 36, '2022-11-25', '\"Darshan Enclave,flat no:6D,Vadakkenda P O,Aluva\"  ', '7559012043', '682314', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_date` date NOT NULL DEFAULT current_timestamp(),
  `cart_id` int(11) NOT NULL,
  `cart_qty` int(11) NOT NULL DEFAULT 1,
  `product_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `cart_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_date`, `cart_id`, `cart_qty`, `product_id`, `booking_id`, `cart_status`) VALUES
('2022-11-15', 173, 1, 53, 97, 1),
('2022-11-15', 175, 1, 58, 98, 1),
('2022-11-15', 176, 1, 81, 99, 1),
('2022-11-15', 177, 1, 88, 99, 1),
('2022-11-15', 178, 1, 67, 100, 1),
('2022-11-15', 179, 1, 68, 100, 1),
('2022-11-15', 180, 3, 53, 101, 1),
('2022-11-15', 181, 1, 54, 101, 1),
('2022-11-15', 182, 1, 53, 102, 1),
('2022-11-15', 183, 1, 53, 103, 1),
('2022-11-15', 184, 1, 54, 103, 1),
('2022-11-15', 185, 1, 53, 104, 1),
('2022-11-15', 187, 1, 53, 105, 1),
('2022-11-15', 188, 1, 54, 105, 1),
('2022-11-15', 189, 2, 58, 106, 1),
('2022-11-15', 190, 1, 54, 107, 1),
('2022-11-15', 192, 1, 54, 109, 0),
('2022-11-15', 193, 1, 68, 109, 0),
('2022-11-15', 194, 1, 68, 110, 1),
('2022-11-15', 195, 1, 54, 111, 1),
('2022-11-15', 196, 1, 58, 111, 1),
('2022-11-15', 197, 1, 54, 112, 1),
('2022-11-15', 198, 1, 53, 113, 1),
('2022-11-15', 199, 1, 58, 113, 1),
('2022-11-15', 200, 2, 68, 113, 1),
('2022-11-15', 201, 1, 68, 114, 1),
('2022-11-15', 202, 2, 88, 114, 1),
('2022-11-15', 203, 2, 88, 115, 1),
('2022-11-15', 204, 1, 81, 115, 1),
('2022-11-15', 205, 1, 53, 116, 1),
('2022-11-15', 206, 1, 54, 117, 1),
('2022-11-15', 207, 1, 54, 118, 1),
('2022-11-15', 208, 2, 53, 118, 1),
('2022-11-16', 209, 1, 68, 119, 1),
('2022-11-16', 210, 2, 88, 119, 1),
('2022-11-16', 211, 2, 88, 120, 1),
('2022-11-16', 212, 1, 81, 120, 1),
('2022-11-16', 213, 1, 88, 121, 1),
('2022-11-16', 214, 1, 81, 121, 1),
('2022-11-16', 215, 2, 68, 121, 1),
('2022-11-16', 216, 1, 53, 122, 1),
('2022-11-17', 217, 3, 88, 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(11, 'Paste'),
(12, 'Brush'),
(13, 'Mouthwash'),
(14, 'Tongue Scrapers');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaint_date` date NOT NULL DEFAULT current_timestamp(),
  `complaint_subject` varchar(100) NOT NULL,
  `complaint_description` varchar(200) NOT NULL DEFAULT current_timestamp(),
  `complaint_status` int(11) NOT NULL DEFAULT 0,
  `complaint_reply` varchar(200) NOT NULL,
  `complaint_replydate` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`complaint_id`, `complaint_date`, `complaint_subject`, `complaint_description`, `complaint_status`, `complaint_reply`, `complaint_replydate`, `user_id`, `type_id`, `status`) VALUES
(8, '2022-08-07', 'dentist', 'bad', 1, 'Ok will solve', '2022-08-07', 33, 2, 0),
(9, '2022-08-07', 'brush', 'colour fading', 1, 'sorry,it will be solved', '2022-08-07', 33, 1, 0),
(10, '2022-08-13', 'Brush', 'Not good.', 1, 'sorry we will fix it.', '2022-08-13', 42, 1, 0),
(11, '2022-09-11', 'koliila', 'not at all good', 0, '', '2022-09-11', 43, 1, 0),
(12, '2022-09-12', 'not good', 'very bad', 1, 'will fix that', '2022-09-12', 43, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complainttype`
--

CREATE TABLE `tbl_complainttype` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_complainttype`
--

INSERT INTO `tbl_complainttype` (`type_id`, `type_name`) VALUES
(1, 'Product Related'),
(2, 'Clinic Related');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dentist`
--

CREATE TABLE `tbl_dentist` (
  `dentist_id` int(11) NOT NULL,
  `dentist_name` varchar(50) NOT NULL,
  `dentist_gender` varchar(10) NOT NULL,
  `dentist_contact` varchar(20) NOT NULL,
  `dentist_email` varchar(50) NOT NULL,
  `place_id` int(11) NOT NULL,
  `dentist_password` varchar(100) NOT NULL,
  `dentist_address` varchar(200) NOT NULL,
  `dentisttype_id` int(11) NOT NULL,
  `dentist_photo` varchar(100) NOT NULL,
  `dentist_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dentist`
--

INSERT INTO `tbl_dentist` (`dentist_id`, `dentist_name`, `dentist_gender`, `dentist_contact`, `dentist_email`, `place_id`, `dentist_password`, `dentist_address`, `dentisttype_id`, `dentist_photo`, `dentist_proof`) VALUES
(14, ' Dr.Roy P V ', 'MALE', '9544312043', 'roypv12@gmail.com', 85, 'varghese123', '\"Parayamthadathil(H),Perumbilly P O,Amballur,Ernakulam,682314\"  ', 5, 'formal.jpg', '1660317645963.jpg'),
(16, ' Dr.Jithin Thomas ', 'MALE', '987654329', 'jithin@gmail.com', 89, 'Jithin@1234', '\"Kadeckal(H),Kadeckal Valavu,Arakunnam P.O,Ernakulam,682313\"  ', 6, '1660317160903.jpg', '1660317645963.jpg'),
(18, 'Dr.Ann Ziphah Ralph', 'FEMALE', '8129872281', 'annziphu@gmail.com', 103, 'Ann@123', 'Christ Bhavan,Aasharimattom Road,perumbilly P O,Mulamthuruthy,682314', 8, 'IMG-20220812-WA0085.jpg', '1660317645991.jpg'),
(19, 'Dr.Abhishek Mukhund', 'MALE', '7994731367', 'abhishek.mukund12@gmail.com', 104, 'Abhishek@66', 'Ambady(H),Souhrida Residence,Veliyanad P O,Arakkunnam,Ernakulam,682313.', 9, '1660317160950.jpg', '1660317645963.jpg'),
(25, 'Dr Tony Varghese', 'MALE', '9544217732', 'tvarghesejohn@gmail.com', 88, 'Tony@123', 'Paranayil(H),Valayanchirangraa P O,683556', 7, 'tony.jpg', 'adhr.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dentisttype`
--

CREATE TABLE `tbl_dentisttype` (
  `dentisttype_id` int(11) NOT NULL,
  `dentisttype_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dentisttype`
--

INSERT INTO `tbl_dentisttype` (`dentisttype_id`, `dentisttype_name`) VALUES
(5, 'Dental Surgeon'),
(6, 'Cons.Paedodontist Child Dental'),
(7, 'Cons.Periodonist'),
(8, 'Cons.Endodonist'),
(9, 'Cons.Orthodontist');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diagnosis`
--

CREATE TABLE `tbl_diagnosis` (
  `diagnosis_id` int(11) NOT NULL,
  `diagnosis_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_diagnosis`
--

INSERT INTO `tbl_diagnosis` (`diagnosis_id`, `diagnosis_name`) VALUES
(1, 'Pain'),
(2, 'Dental cavities'),
(3, 'Cold Sores'),
(4, 'Dental Abscesses'),
(5, 'Dental Infections'),
(6, 'Dental Plague'),
(7, 'Dry Mouth'),
(8, 'Gum Bleeding'),
(9, 'Gum diseases'),
(10, 'Yeast Infection In Mouth');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(22, 'Ernakulam'),
(23, 'Kannor'),
(24, 'Thiruvanathapuram'),
(25, 'Wayanad'),
(26, 'Kollam'),
(27, 'Kozhikode'),
(28, 'Kottayam'),
(29, 'Pathanamthitta'),
(30, 'Palakad'),
(31, 'Thrissur'),
(32, 'Malapuram'),
(33, 'Idukki'),
(34, 'Alapuzha'),
(35, 'Kasargod');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medicine`
--

CREATE TABLE `tbl_medicine` (
  `medicine_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `medicine_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_medicine`
--

INSERT INTO `tbl_medicine` (`medicine_id`, `diagnosis_id`, `medicine_name`) VALUES
(3, 1, 'Amtitriptyline'),
(4, 1, 'Celecoxib'),
(5, 2, 'Sodium Fluoride Tablets'),
(6, 3, 'Penciclovir(Cream)'),
(7, 3, 'Valacyclovir(Drug)'),
(8, 4, 'Amoxicillin'),
(9, 4, 'Clarithromycin'),
(10, 4, 'Metronidazole'),
(11, 5, 'Cephalexin'),
(12, 5, 'Cephradine'),
(13, 6, 'Chlorhexidine'),
(14, 7, 'Cevimeline'),
(15, 7, 'Pilocarpine'),
(16, 8, 'Clarithromycin'),
(17, 9, 'Ciprofloxacin'),
(18, 10, 'Fluconazole Nystatin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `district_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `place_pin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`district_id`, `place_id`, `place_name`, `place_pin`) VALUES
(11, 49, 'Melila', '691508'),
(10, 50, 'Kalanadi Kolli', '673579'),
(10, 51, 'Kalathu vayal', '673593'),
(10, 52, 'kalpetta', '673121'),
(12, 53, 'Abhayagiri', '673517'),
(12, 54, 'Akkal', '673513'),
(12, 55, 'Arur', '673507'),
(13, 56, 'Alapra', '686544'),
(13, 57, 'amalagiri', '686561'),
(13, 58, 'Areeparambu', '686501'),
(14, 59, 'Gavi', '685533'),
(14, 60, 'pallickal', '690504'),
(14, 61, 'Anandapally', '691525'),
(15, 62, 'Amayur', '679303'),
(15, 63, 'Ambalapara', '679512'),
(16, 64, 'Ayyappankavu', '680666'),
(16, 65, 'Blangad', '680506'),
(17, 66, 'Alathiyur', '676102'),
(17, 67, 'Aliparamba', '679357'),
(18, 68, 'Chinnar', '685565'),
(18, 69, 'Chottupara', '685552'),
(19, 70, 'kuttanad', '688506'),
(19, 71, 'Cherthala', '6888524'),
(20, 72, 'Kadumeni', '670511'),
(20, 73, 'palavayal', '670511'),
(20, 74, 'Adur', '671543'),
(34, 75, 'Aimurikara', '683544'),
(22, 76, 'Airapuram', '683541'),
(22, 77, 'Airoopadam', '686692'),
(22, 78, 'Airoor', '683579'),
(22, 79, 'Alangad', '683511'),
(22, 80, 'Alattuchira', '683544'),
(22, 81, 'Allapra', '683553'),
(22, 82, 'Aluva', '683101'),
(22, 83, 'Ambalamedu', '682303'),
(22, 84, 'Ambalamugal', '682302'),
(22, 85, 'Amballur', '682315'),
(22, 86, 'Anappara', '683581'),
(22, 87, 'Anchelpetty', '686667'),
(22, 88, 'Angamally', '683572'),
(22, 89, 'Arakunnam', '682313'),
(22, 90, 'Arakuzha', '686672'),
(22, 91, 'Aruvappara', '683545'),
(22, 92, 'Asamannor', '683549'),
(22, 93, 'Athani', '683585'),
(22, 94, 'Avoly', '686677'),
(22, 95, 'Ayavana', '686676'),
(22, 96, 'Ayyampilly', '682501'),
(22, 97, 'Ayyampuzha', '683581'),
(22, 98, 'Azhakam', '683577'),
(22, 99, 'Azheekal', '682510'),
(22, 100, 'Bhankthanandapuram', '682308'),
(22, 101, 'Bhoothathankettu', '686691'),
(22, 102, 'Binanipuram', '683502'),
(22, 103, 'Perumbilly', '682314'),
(22, 104, 'Pepathy', '682315'),
(23, 105, 'keenampara', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prescribe`
--

CREATE TABLE `tbl_prescribe` (
  `prescription_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prescription_date` date NOT NULL,
  `diagnosis_id` int(100) NOT NULL,
  `prescription_medi` varchar(100) NOT NULL,
  `prescription_dose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prescribe`
--

INSERT INTO `tbl_prescribe` (`prescription_id`, `appointment_id`, `user_id`, `prescription_date`, `diagnosis_id`, `prescription_medi`, `prescription_dose`) VALUES
(20, 61, 43, '0000-00-00', 1, 'wertyuio', 'rewa'),
(21, 62, 43, '0000-00-00', 2, 'ghyuiop', '34567'),
(22, 62, 43, '0000-00-00', 2, 'wd', 'qw'),
(23, 62, 43, '0000-00-00', 1, 'asdfg', 'wert'),
(24, 64, 43, '0000-00-00', 1, 'sdfghj', '34u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prescription`
--

CREATE TABLE `tbl_prescription` (
  `prescription_id` int(11) NOT NULL,
  `dentist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prescription_date` date NOT NULL DEFAULT current_timestamp(),
  `diagnosis_id` varchar(100) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `dosage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prescription`
--

INSERT INTO `tbl_prescription` (`prescription_id`, `dentist_id`, `user_id`, `prescription_date`, `diagnosis_id`, `medicine_name`, `dosage`) VALUES
(8, 17, 42, '2022-08-31', '3', '6', '2 times a day after food'),
(9, 14, 42, '2022-11-01', '2', '5', 'paracetamol  500 mg-1-0-0\r\nacithr 5 mg 0-0-0-1'),
(10, 14, 42, '2022-11-01', '1', '3', 'qwertyu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_des` varchar(200) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `subcategory_id`, `size_id`, `product_name`, `product_des`, `product_image`, `product_price`) VALUES
(53, 38, 16, 'Toothpaste Fluoride 500GM', 'It contains fluoride, it not only strengthens the enamel of your teeth, but it also remineralizes teeth that have small amounts of decay already.', '1660282370804.jpeg', '220'),
(54, 38, 18, 'Toothpaste Fluoride 300GM', 'It contains fluoride, it not only strengthens the enamel of your teeth, but it also remineralizes teeth that have small amounts of decay already.', '1660282370804.jpeg', '171'),
(55, 38, 19, 'Toothpaste Fluoride 200GM', 'It contains fluoride, it not only strengthens the enamel of your teeth, but it also remineralizes teeth that have small amounts of decay already.', '1660282370804.jpeg', '62'),
(56, 39, 21, 'Toothpaste Herbal 500GM', 'Herbal toothpastes contain only natural ingredients, making them biodegradable.', '1660282370786.jpeg', '300'),
(57, 39, 22, 'Toothpaste Herbal 300GM', 'Herbal toothpastes contain only natural ingredients, making them biodegradable.', '1660282370786.jpeg', '192'),
(58, 40, 23, 'Toothpaste Sensitive 500GM', 'The active ingredient in sensitivity toothpaste blocks microscopic holes in the tooth that lead to nerve endings. Because it protects these nerves, you will feel less sensitivity to hot and cold.', '1660282370767.jpeg', '279'),
(61, 40, 24, 'Toothpaste Sensitive 300GM', 'The active ingredient in sensitivity toothpaste blocks microscopic holes in the tooth that lead to nerve endings. Because it protects these nerves, you will feel less sensitivity to hot and cold.', '1660282370767.jpeg', '185'),
(62, 40, 25, 'Toothpaste Sensitive 100GM', 'The active ingredient in sensitivity toothpaste blocks microscopic holes in the tooth that lead to nerve endings. Because it protects these nerves, you will feel less sensitivity to hot and cold.', '1660282370767.jpeg', '75'),
(63, 41, 41, 'Toothpaste Whitening 500GM', 'They can help remove surface stains. This type of toothpaste contains fluoride, so it can cause additional teeth sensitivity and is not usually ideal for someone who already has sensitive teeth.', '1660282370749.jpeg', '255'),
(64, 41, 42, 'Toothpaste Whitening 200GM', 'They can help remove surface stains. This type of toothpaste contains fluoride, so it can cause additional teeth sensitivity and is not usually ideal for someone who already has sensitive teeth.', '1660282370749.jpeg', '73'),
(65, 42, 26, 'Toothpaste Children 500GM', 'children’s toothpaste contains less fluoride to reduce the risk of children ingesting too much.', '1660282370729.jpeg', '360'),
(66, 42, 27, 'Toothpaste Children 300GM', 'children’s toothpaste contains less fluoride to reduce the risk of children ingesting too much.', '1660282370729.jpeg', '199'),
(67, 42, 28, 'Toothpaste Children 200GM', 'children’s toothpaste contains less fluoride to reduce the risk of children ingesting too much.', '1660282370729.jpeg', '100'),
(68, 43, 29, 'Brush Hard & Large', 'The advantage of using a harder toothbrush is that it clears away more plaque.', '1660282370639.jpeg', '44'),
(70, 44, 31, 'Brush Soft & Large', 'Soft toothbrushes are actually more effective at removing food and plaque,and they are gentler on your teeth and gums.', '1660282370895.jpg', '43'),
(71, 44, 32, 'Brush Soft & Small', 'Soft toothbrushes are actually more effective at removing food and plaque,and they are gentler on your teeth and gums.', '1660282370895.jpg', '40'),
(75, 45, 33, 'Brush Medium & Large', 'They are stiff enough to remove debris, but soft enough that they dont damage tooth enamel.', '1660282370878.jpg', '35'),
(77, 45, 34, 'Brush Medium & Small', 'They are stiff enough to remove debris, but soft enough that they dont damage tooth enamel.', '1660282370878.jpg', '30'),
(78, 46, 35, 'Mouthwash Cosmetic 100ML', 'Cosmetic mouthwash is great for rinsing away loose food particles, but it doesn’t have any actual germ-killing properties.', '1660282370692.jpeg', '55'),
(79, 46, 36, 'Mouthwash Cosmetic 250ML', 'Cosmetic mouthwash is great for rinsing away loose food particles, but it doesn’t have any actual germ-killing properties.', '1660282370692.jpeg', '149'),
(80, 47, 37, 'Mouthwash Fluoride 100ML', 'Sodium fluoride is a chemical that helps to fight tooth decay, toughening teeth in the process. Fluoride mouthwash has this chemical as part of its formula, with the aim of helping to keep teeth healt', '1660282370675.jpeg', '60'),
(81, 47, 38, 'Mouthwash Fluoride 250ML', 'Sodium fluoride is a chemical that helps to fight tooth decay, toughening teeth in the process. Fluoride mouthwash has this chemical as part of its formula, with the aim of helping to keep teeth healt', '1660282370675.jpeg', '160'),
(82, 48, 40, 'Mouthwash Natural 100ML', 'Natural mouthwash formulas are made without the use of alcohol or fluoride but can have the same benefits of those that do.It include essential oils, salt, herbs, mint,aloe vera etc.', '1660282370659.jpeg', '79'),
(84, 48, 39, 'Mouthwash Fluoride 250ML', 'Natural mouthwash formulas are made without the use of alcohol or fluoride but can have the same benefits of those that do.It include essential oils, salt, herbs, mint,aloe vera etc.', '1660282370659.jpeg', '199'),
(88, 50, 44, 'Tongue Cleaner U Shaped', 'They are cheap,lightweight and easy to use.The metal ones can even be sterilized in hot water.', '1660282518378.jpg', '12'),
(89, 51, 45, 'Tongue Cleaner T Shaped', 'These brushes have a long handle which easily goes into the back of your mouth and cleans your tongue gently.', '1660282518412.jpg', '60'),
(90, 49, 43, 'Tongue Cleaner V Shaped', 'These are meant for those you need something more flexible.They are available as a straight strip,which can be folded to suit the width of your mouth and are easy to use and store.', '1660282370861.jpg', '69'),
(91, 43, 30, 'Brush Hard & Small', 'The advantage of using a harder toothbrush is that it clears away more plaque.', '1660282370711.jpeg', '42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productreview`
--

CREATE TABLE `tbl_productreview` (
  `review_id` int(11) NOT NULL,
  `review_datetime` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_review` varchar(100) NOT NULL,
  `user_rating` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_productreview`
--

INSERT INTO `tbl_productreview` (`review_id`, `review_datetime`, `product_id`, `user_review`, `user_rating`, `user_name`) VALUES
(1, '2022-11-06', 53, 'qwertyui', 2, 'varghese'),
(2, '2022-11-06', 53, 'kollam', 5, 'basil'),
(3, '2022-11-06', 53, 'good', 4, 'binil'),
(4, '2022-11-08', 88, 'nice ', 3, 'basil'),
(5, '2022-11-14', 53, 'good', 5, 'alex');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `review_date` date NOT NULL DEFAULT current_timestamp(),
  `review_details` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `review_date`, `review_details`, `user_id`) VALUES
(2, '2022-08-20', 'adilpoli', 42);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `schedule_id` int(11) NOT NULL,
  `schedule_date` date NOT NULL DEFAULT current_timestamp(),
  `from_time` time NOT NULL DEFAULT current_timestamp(),
  `to_time` time NOT NULL DEFAULT current_timestamp(),
  `dentist_id` int(11) NOT NULL,
  `schedule_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`schedule_id`, `schedule_date`, `from_time`, `to_time`, `dentist_id`, `schedule_status`) VALUES
(23, '2022-08-02', '10:00:00', '12:00:00', 16, 0),
(29, '2022-08-29', '09:30:00', '16:00:00', 14, 0),
(30, '2022-08-29', '10:00:00', '16:00:00', 17, 0),
(31, '2022-09-06', '10:30:00', '17:30:00', 14, 0),
(32, '2022-11-01', '10:00:00', '04:00:00', 18, 0),
(33, '0222-11-01', '10:00:00', '04:00:00', 14, 0),
(34, '2022-11-04', '16:10:00', '19:10:00', 0, 1),
(35, '2022-11-09', '09:00:00', '12:00:00', 14, 1),
(36, '2022-11-09', '11:00:00', '15:15:00', 16, 1),
(37, '2022-11-09', '11:00:00', '15:15:00', 16, 0),
(38, '2022-11-09', '12:00:00', '16:30:00', 17, 1),
(39, '2022-11-09', '15:30:00', '18:00:00', 18, 1),
(40, '2022-11-09', '11:30:00', '15:17:00', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `dentist_id` int(11) NOT NULL,
  `service_des` varchar(500) NOT NULL,
  `service_rate` varchar(50) NOT NULL,
  `service_duration(in Min)` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`service_id`, `service_name`, `dentist_id`, `service_des`, `service_rate`, `service_duration(in Min)`) VALUES
(6, 'Replacement of missing teeth', 17, 'We offer different procedures for replacing missing teeth e.g. dental implants, fixed caps or bridges and removable dentures.', 'RS.25000', '60'),
(8, 'Teeth Whitening/Bleaching', 16, 'Teeth cleaning, along with whitening and bleaching is done with utmost care, for a smile that looks not just beautiful, but also healthy.', 'RS.6500', '15'),
(14, 'Single Sitting Root Canal', 14, 'Advanced technology now enables us to perform the sequence of procedures required in root canal therapy, in a single sitting. No more are multiple injections or visits required.', 'RS.12000', '120'),
(15, 'Orthodontic Treatment', 19, 'Teeth straightening treatments are performed at our clinic using invisible braces too, among other alternative methods.', 'RS.16000', '30'),
(16, 'Extraction Procedures', 17, 'Simple and surgical tooth extractions including wisdom tooth extractions are carried out with proper sterilisation care.', 'RS.300', '35'),
(17, 'Cosmetic Procedures', 18, 'Procedures pertaining to cosmetic or aesthetic dentistry are also carried out with utmost care at our clinic. Smile makeovers and dental jewellery are a couple of treatments offered among others.', 'RS.7000', '30'),
(18, 'Full Mouth Implants', 14, 'We understand how some patients, especially children, may feel anxious before a treatment or procedure, and may even refuse to co-operate. In consideration of this, we also offer all our dental treatments under conscious sedation, in a single sitting. This is carried out with extreme care and admission to a hospital is not required.', 'RS.38000', '120'),
(20, 'Cavity Filling', 25, 'At our clinic, we use silver, ceramic and cosmetic fillings, depending on need and circumstance of the patient, in order to fill cavities.', 'RS.3000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `subcategory_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `size_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`subcategory_id`, `size_id`, `size_name`) VALUES
(5, 10, '50g'),
(28, 15, 'a'),
(38, 16, '500GM'),
(38, 18, '300GM'),
(38, 19, '200GM'),
(39, 21, '500GM'),
(39, 22, '300GM'),
(40, 23, '500GM'),
(40, 24, '300GM'),
(40, 25, '100GM'),
(42, 26, '500GM'),
(42, 27, '300GM'),
(42, 28, '200GM'),
(43, 29, 'Large'),
(43, 30, 'Small'),
(44, 31, 'Large'),
(44, 32, 'Small'),
(45, 33, 'Large'),
(45, 34, 'Small'),
(46, 35, '100ML'),
(46, 36, '250ML'),
(47, 37, '100ML'),
(47, 38, '250ML'),
(48, 39, '250ML'),
(48, 40, '100ML'),
(41, 41, '500GM'),
(41, 42, '200GM'),
(49, 43, 'Medium'),
(50, 44, 'Medium'),
(51, 45, 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `stock_date` date NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `stock_qty`, `stock_date`, `product_id`) VALUES
(33, 20, '2022-08-08', 86),
(52, 5, '2022-08-02', 53),
(53, 5, '2022-08-02', 53),
(54, 5, '2022-08-02', 53),
(55, 6, '2022-08-04', 54),
(56, 2, '2022-08-27', 58),
(57, 12, '2022-08-04', 67),
(59, 80, '2022-10-19', 53),
(60, 80, '2022-10-19', 53),
(61, 87, '2022-10-18', 53),
(62, 10, '2022-10-26', 68),
(63, 30, '2022-10-25', 81),
(65, 20, '2022-11-16', 88);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`category_id`, `subcategory_id`, `subcategory_name`) VALUES
(11, 38, 'Fluoridated '),
(11, 39, 'Herbal'),
(11, 40, 'Sensitivity '),
(11, 41, 'Whitening '),
(11, 42, 'For Children'),
(12, 43, 'Hard'),
(12, 44, 'Soft'),
(12, 45, 'Medium'),
(13, 46, 'Cosmetic'),
(13, 47, 'Fluoride'),
(13, 48, 'Natural'),
(14, 49, 'V Shaped'),
(14, 50, 'U Shaped'),
(14, 51, 'T Shaped');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_gender` varchar(11) NOT NULL,
  `user_contact` varchar(100) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `district_id` varchar(40) NOT NULL,
  `place_id` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `user_address` varchar(500) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_gender`, `user_contact`, `user_email`, `district_id`, `place_id`, `user_pass`, `user_address`, `user_photo`, `user_proof`) VALUES
(42, '  Roy P V  ', 'MALE', '9544312043', 'vargheseproy254@gmail.com', '', '89', 'Vargu@123', '\"Peechanikatt(H),Kadeakkalavalavu P O,Arakunnam,Ernakulam dist,682315   \"  ', '1660402533551.jpeg', '1660402533406.jpeg'),
(43, '   Basil P Roy   ', 'MALE', '9400893288', 'basilproy126@gmail.com', '', '93', 'Basil@1234', 'Kochuparambil(H),Athani P O,Ernakulam,791309', '1660402533467.jpeg', '1660402533451.jpeg'),
(68, ' P V Anjali ', 'FEMALE', '6282199080', 'avenu073@gmail.com', '', '82', 'Anjali@123', '\"Darshan Enclave,flat no:6D,Vadakkenda P O,Aluva\"  ', '1661785057683.jpg', '1660317646018.jpg'),
(69, 'Anjusha Narayanan', 'FEMALE', '7593094608', 'anjushanarayanan2002@gmail.com', '', '83', 'Anjusha@123', 'Kallingaparambil(H),chelad P O,Amabalamedu', '1661785057651.jpg', '1660317646018.jpg'),
(89, 'Basil P Roy', 'MALE', '9544312043', 'basil@gmail.com', '', '89', 'Basil@123', 'polsonvillas,Arakunnam p o,Ernakulam.', 'wp10458429-spider-man-no-way-home-desktop-wallpapers.jpg', 'wp10458512-spider-man-no-way-home-desktop-wallpapers.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_appointmentrequest`
--
ALTER TABLE `tbl_appointmentrequest`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_dentist`
--
ALTER TABLE `tbl_dentist`
  ADD PRIMARY KEY (`dentist_id`);

--
-- Indexes for table `tbl_dentisttype`
--
ALTER TABLE `tbl_dentisttype`
  ADD PRIMARY KEY (`dentisttype_id`);

--
-- Indexes for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  ADD PRIMARY KEY (`diagnosis_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_medicine`
--
ALTER TABLE `tbl_medicine`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_prescribe`
--
ALTER TABLE `tbl_prescribe`
  ADD PRIMARY KEY (`prescription_id`);

--
-- Indexes for table `tbl_prescription`
--
ALTER TABLE `tbl_prescription`
  ADD PRIMARY KEY (`prescription_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_productreview`
--
ALTER TABLE `tbl_productreview`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_appointmentrequest`
--
ALTER TABLE `tbl_appointmentrequest`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_complainttype`
--
ALTER TABLE `tbl_complainttype`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_dentist`
--
ALTER TABLE `tbl_dentist`
  MODIFY `dentist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_dentisttype`
--
ALTER TABLE `tbl_dentisttype`
  MODIFY `dentisttype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  MODIFY `diagnosis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_medicine`
--
ALTER TABLE `tbl_medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_prescribe`
--
ALTER TABLE `tbl_prescribe`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_prescription`
--
ALTER TABLE `tbl_prescription`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_productreview`
--
ALTER TABLE `tbl_productreview`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
