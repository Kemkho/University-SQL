CREATE TABLE `Universities` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `phone` varchar(255),
  `email` varchar(255),
  `city` varchar(255)
);

CREATE TABLE `Faculty` (
  `id` int PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `University_id` int(255) NOT NULL
);

CREATE TABLE `Subject` (
  `id` int PRIMARY KEY,
  `name` varchar(255) NOT NULL
);

CREATE TABLE `Lecturer` (
  `id` int PRIMARY KEY,
  `Faculty_id` int(255) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Id_number` int UNIQUE NOT NULL,
  `Age` int,
  `Email` varchar(255) UNIQUE NOT NULL,
  `Phone` varchar(255),
  `Address` varchar(255) NOT NULL,
  `Second_address` varchar(255),
  `Appartment_number` int,
  `Birth_date` datetime NOT NULL,
  `Sex` varchar(255) NOT NULL,
  `University_id` int NOT NULL,
  `Range` varchar(255) NOT NULL,
  `Bank_number` varchar(255) NOT NULL
);

CREATE TABLE `Students` (
  `id` int PRIMARY KEY,
  `Faculty_id` int(255) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Id_number` int UNIQUE NOT NULL,
  `Age` int,
  `Email` varchar(255) UNIQUE NOT NULL,
  `Phone` varchar(255),
  `Address` varchar(255) NOT NULL,
  `Second_address` varchar(255),
  `Appartment_number` int,
  `Birth_date` datetime NOT NULL,
  `Sex` varchar(255) NOT NULL
);

CREATE TABLE `Students_subject` (
  `Student_id` int NOT NULL,
  `Subject_id` int NOT NULL,
  `leqturer_id` int NOT NULL,
  `leqture_time_id` int NOT NULL,
  `Enroll_date` datetime
);

CREATE TABLE `Managers` (
  `id` int PRIMARY KEY,
  `Faculty_id` int(255) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Id_number` int UNIQUE NOT NULL,
  `Age` int,
  `Email` varchar(255) UNIQUE NOT NULL,
  `Phone` varchar(255),
  `Address` varchar(255) NOT NULL,
  `Second_address` varchar(255),
  `Appartment_number` int,
  `Birth_date` datetime NOT NULL,
  `Sex` varchar(255) NOT NULL
);

CREATE TABLE `Leqture_Time` (
  `id` int(255) PRIMARY KEY,
  `Leqture_Time` varchar(255)
);

ALTER TABLE `Universities` ADD FOREIGN KEY (`id`) REFERENCES `Faculty` (`University_id`);

ALTER TABLE `Lecturer` ADD FOREIGN KEY (`Faculty_id`) REFERENCES `Faculty` (`id`);

ALTER TABLE `Students` ADD FOREIGN KEY (`Faculty_id`) REFERENCES `Faculty` (`id`);

ALTER TABLE `Students_subject` ADD FOREIGN KEY (`Student_id`) REFERENCES `Students` (`id`);

ALTER TABLE `Students_subject` ADD FOREIGN KEY (`Subject_id`) REFERENCES `Subject` (`id`);

ALTER TABLE `Managers` ADD FOREIGN KEY (`Faculty_id`) REFERENCES `Faculty` (`id`);

ALTER TABLE `Students_subject` ADD FOREIGN KEY (`leqture_time_id`) REFERENCES `Leqture_Time` (`id`);

ALTER TABLE `Students_subject` ADD FOREIGN KEY (`leqturer_id`) REFERENCES `Lecturer` (`id`);
