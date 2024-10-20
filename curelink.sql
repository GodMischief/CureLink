-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2024 at 10:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Curelink`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Record_ID` int(11) NOT NULL,
  `Doctor_ID` int(11) DEFAULT NULL,
  `Patient_ID` int(11) DEFAULT NULL,
  `Appointment_Time` time DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Record_ID`, `Doctor_ID`, `Patient_ID`, `Appointment_Time`, `Status`) VALUES
(1, 2, 2, '00:00:09', 0),
(2, 2, 2, '00:00:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `ID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Full_Name` varchar(255) DEFAULT NULL,
  `Registration_Number` varchar(255) DEFAULT NULL,
  `Contact_Number` bigint(13) DEFAULT NULL,
  `Hospital_Name` varchar(255) DEFAULT NULL,
  `Specialization` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Available_Days` varchar(255) DEFAULT NULL,
  `Available_Times` varchar(255) DEFAULT NULL,
  `Fees` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`ID`, `Username`, `Password`, `Email`, `Full_Name`, `Registration_Number`, `Contact_Number`, `Hospital_Name`, `Specialization`, `Address`, `Available_Days`, `Available_Times`, `Fees`) VALUES
(2, 'gg', '$2b$12$3/rqGn9L6guIoa1B/yQ7MOjtIIA1gycarMeL15pXL764v1n1xxt9e', 'gauravginodia02@gmail.com', 'Gaurav', '501', 9038169836, 'RG Kar', 'Dermatologist', 'Kolkata', 'Mon,Tue', '9 a.m- 5 p.m', 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_fields`
--

CREATE TABLE `doctor_fields` (
  `Field_ID` int(11) NOT NULL,
  `Disease` varchar(255) DEFAULT NULL,
  `Specialisation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_fields`
--

INSERT INTO `doctor_fields` (`Field_ID`, `Disease`, `Specialisation`) VALUES
(1, 'Fungal infection', 'Dermatologist'),
(2, 'Allergy', 'Allergist/Immunologists'),
(3, 'GERD', 'Gastroenterologist'),
(4, 'Acne', 'Dermatologist'),
(5, 'hepatitis A', 'Hepatologist'),
(6, 'hepatitis B', 'Hepatologist'),
(7, 'hepatitis C', 'Hepatologist'),
(8, 'hepatitis D', 'Hepatologist'),
(9, 'hepatitis E', 'Hepatologist'),
(10, 'Chronic cholestasis', 'Gastroenterologist'),
(11, 'Drug Reaction', 'Pharmacologist'),
(12, 'Peptic ulcer disease', 'Gastroenterologist'),
(13, 'AIDS', 'HIV Specialist'),
(14, 'Diabetes', 'Endocrinologist'),
(15, 'Gastroenteritis', 'Gastroenterologist'),
(16, 'Bronchial Asthma', 'Asthma Specialist'),
(17, 'Hypertension', 'Cardiologist'),
(18, 'Migraine', 'Neurologist'),
(19, 'Cervical spondylosis', 'Otolaryngologist'),
(20, 'Paralysis (brain hemorrhage)', 'Paralysis Doctor'),
(21, 'Jaundice', 'Gastroenterologist'),
(22, 'Malaria', 'General Physician'),
(23, 'Chicken pox', 'General Physician'),
(24, 'Dengue', 'Microbiologist'),
(25, 'Typhoid', 'General Physician'),
(26, 'Alcoholic hepatitis', 'Gastroenterologist'),
(27, 'Tuberculosis', 'Pulmonologists'),
(28, 'Common Cold', 'Otolaryngologist'),
(29, 'Pneumonia', 'Pediatric'),
(30, 'Dimorphic hemmorhoids(piles)', 'Proctologist'),
(31, 'Heart attack', 'Cardiologist'),
(32, 'Varicose veins', 'Endocrinologist'),
(33, 'Hypothyroidism', 'Endocrinologist'),
(34, 'Hyperthyroidism', 'Endocrinologist'),
(35, 'Hypoglycemia', 'Endocrinologist'),
(36, 'Osteoarthristis', 'Orthopedist'),
(37, 'Arthritis', 'Orthopedist'),
(38, '(vertigo) Paroymsal Positional Vertigo', 'ENT Specialist'),
(39, 'Urinary tract infection', 'Urologist'),
(40, 'Psoriasis', 'Physician'),
(41, 'Impetigo', 'Expert Physician');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Medicine_ID` int(11) NOT NULL,
  `Disease` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medicine_ID`, `Disease`, `Name`) VALUES
(1, 'Fungal infection', 'Seborrheic Dermatitis'),
(2, 'Allergy', 'Aripiprazole'),
(3, 'GERD', 'Kapidex'),
(4, 'Chronic cholestasis', 'amoxicillin'),
(5, 'Drug Reaction', 'Percocet'),
(6, 'Peptic ulcer disease', 'clarithromycin'),
(7, 'AIDS', 'Atripla'),
(8, 'Diabetes', 'Lyrica'),
(9, 'Gastroenteritis', 'Zofran'),
(10, 'Bronchial Asthma', 'Prednisone'),
(11, 'Hypertension', 'Methylphenidate'),
(12, 'Migraine', 'Topiramate'),
(13, 'Cervical spondylosis', 'Gabapentin'),
(14, 'Paralysis (brain hemorrhage)', 'Belsomra'),
(15, 'Jaundice', 'Ledipasvir / sofosbuvir'),
(16, 'Malaria', 'Malarone'),
(17, 'Chicken pox', 'Tri-Linyah'),
(18, 'Dengue', 'Acetaminophen'),
(19, 'Typhoid', 'Amoxicillin / clavulanate'),
(20, 'hepatitis A', 'Dimenhydrinate'),
(21, 'hepatitis B', 'Tenofovir'),
(22, 'hepatitis C', 'Ledipasvir / sofosbuvir'),
(23, 'hepatitis D', 'Hydromorphone'),
(24, 'hepatitis E', 'acetaminophen'),
(25, 'Alcoholic hepatitis', 'Corticosteroids'),
(26, 'Tuberculosis', 'Isoniazid'),
(27, 'Common Cold', 'Benzonatate'),
(28, 'Pneumonia', 'Loratadine'),
(29, 'Dimorphic hemorrhoids (piles)', 'Proctofoam'),
(30, 'Heart attack', 'Venlafaxine'),
(31, 'Varicose veins', 'Gabapentin'),
(32, 'Hypothyroidism', 'Ziprasidone'),
(33, 'Hyperthyroidism', 'Adderall XR'),
(34, 'Hypoglycemia', 'Lurasidone'),
(35, 'Osteoarthritis', 'Corticosteroids'),
(36, 'Arthritis', 'Etanercept'),
(37, '(vertigo) Paroxysmal Positional Vertigo', 'Effexor'),
(38, 'Acne', 'Ethinyl estradiol'),
(39, 'Urinary tract infection', 'Trimethoprim'),
(40, 'Psoriasis', 'Halobetasol'),
(41, 'Impetigo', 'Keflex');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `Symptom_ID` int(11) NOT NULL,
  `Symptom_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`Symptom_ID`, `Symptom_Name`) VALUES
(1, 'itching'),
(2, 'skin_rash'),
(3, 'nodal_skin_eruptions'),
(4, 'continuous_sneezing'),
(5, 'chills'),
(6, 'joint_pain'),
(7, 'stomach_pain'),
(8, 'acidity'),
(9, 'ulcers_on_tongue'),
(10, 'muscle_wasting'),
(11, 'vomiting'),
(12, 'burning_micturition'),
(13, 'spotting_ urination'),
(14, 'fatigue'),
(15, 'weight_gain'),
(16, 'anxiety'),
(17, 'cold_hands_and_feets'),
(18, 'mood_swings'),
(19, 'weight_loss'),
(20, 'restlessness'),
(21, 'lethargy'),
(22, 'patches_in_throat'),
(23, 'irregular_sugar_level'),
(24, 'cough'),
(25, 'high_fever'),
(26, 'sunken_eyes'),
(27, 'breathlessness'),
(28, 'sweating'),
(29, 'dehydration'),
(30, 'indigestion'),
(31, 'headache'),
(32, 'yellowish_skin'),
(33, 'dark_urine'),
(34, 'nausea'),
(35, 'loss_of_appetite'),
(36, 'pain_behind_the_eyes'),
(37, 'back_pain'),
(38, 'constipation'),
(39, 'abdominal_pain'),
(40, 'diarrhoea'),
(41, 'mild_fever'),
(42, 'yellow_urine'),
(43, 'yellowing_of_eyes'),
(44, 'acute_liver_failure'),
(45, 'fluid_overload'),
(46, 'swelling_of_stomach'),
(47, 'swelled_lymph_nodes'),
(48, 'malaise'),
(49, 'blurred_and_distorted_vision'),
(50, 'phlegm'),
(51, 'throat_irritation'),
(52, 'redness_of_eyes'),
(53, 'sinus_pressure'),
(54, 'runny_nose'),
(55, 'congestion'),
(56, 'chest_pain'),
(57, 'weakness_in_limbs'),
(58, 'fast_heart_rate'),
(59, 'pain_during_bowel_movements'),
(60, 'pain_in_anal_region'),
(61, 'bloody_stool'),
(62, 'neck_pain'),
(63, 'dizziness'),
(64, 'cramps'),
(65, 'bruising'),
(66, 'obesity'),
(67, 'swollen_legs'),
(68, 'swollen_blood_vessels'),
(69, 'puffy_face_and_eyes'),
(70, 'enlarged_thyroid'),
(71, 'brittle_nails'),
(72, 'swollen_extremeties'),
(73, 'excessive_hunger'),
(74, 'extra_marital_contacts'),
(75, 'drying_and_tingling_lips'),
(76, 'slurred_speech'),
(77, 'knee_pain'),
(78, 'hip_joint_pain'),
(79, 'muscle_weakness'),
(80, 'stiff_neck'),
(81, 'swelling_joints'),
(82, 'movement_stiffness'),
(83, 'spinning_movements'),
(84, 'loss_of_balance'),
(85, 'unsteadiness'),
(86, 'weakness_of_one_body_side'),
(87, 'loss_of_smell'),
(88, 'bladder_discomfort'),
(89, 'foul_smell_of urine'),
(90, 'continuous_feel_of_urine'),
(91, 'passage_of_gases'),
(92, 'internal_itching'),
(93, 'toxic_look_(typhos)'),
(94, 'depression'),
(95, 'irritability'),
(96, 'muscle_pain'),
(97, 'altered_sensorium'),
(98, 'red_spots_over_body'),
(99, 'abnormal_menstruation'),
(100, 'dischromic _patches'),
(101, 'watering_from_eyes'),
(102, 'increased_appetite'),
(103, 'polyuria'),
(104, 'family_history'),
(105, 'mucoid_sputum'),
(106, 'rusty_sputum'),
(107, 'lack_of_concentration'),
(108, 'visual_disturbances'),
(109, 'receiving_blood_transfusion'),
(110, 'receiving_unsterile_injections'),
(111, 'coma'),
(112, 'stomach_bleeding'),
(113, 'distention_of_abdomen'),
(114, 'history_of_alcohol_consumption'),
(115, 'fluid_overload'),
(116, 'blood_in_sputum'),
(117, 'prominent_veins_on_calf'),
(118, 'palpitations'),
(119, 'painful_walking'),
(120, 'pus_filled_pimples'),
(121, 'blackheads'),
(122, 'skin_peeling'),
(123, 'silver_like_dusting'),
(124, 'small_dents_in_nails'),
(125, 'inflammatory_nails'),
(126, 'blister'),
(127, 'red_sore_around_nose'),
(128, 'yellow_crust_ooze');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Full_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Blood_Group` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `API_Token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Username`, `Password`, `Email`, `Full_Name`, `Address`, `Blood_Group`, `Age`, `API_Token`) VALUES
(1, 'gg', '$2b$12$To.R5Q9VFQRZDapyqTp2huxdtVUFe7iSCjcY58FwDFb4jwYKUSUte', 'gauravginodia02@gmail.com', 'Gaurav', 'Kolkata', 'B+', 20, 'Z2cofikxMjM=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Record_ID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doctor_fields`
--
ALTER TABLE `doctor_fields`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`Medicine_ID`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`Symptom_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Record_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor_fields`
--
ALTER TABLE `doctor_fields`
  MODIFY `Field_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `Medicine_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `Symptom_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
