-- Create Database
CREATE DATABASE levai_mbatha_clinic;

-- use database
USE levai_mbatha_clinic;

-- create patients table
CREATE TABLE patients(
patient_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
gender ENUM('Male','Female','Other') NOT NULL,
phone_number VARCHAR(15) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE,
address TEXT
);

-- create doctor's table
CREATE TABLE doctors(
doctor_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
specialization VARCHAR(100) NOT NULL,
phone_number VARCHAR(15) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL
); 

-- create appointments table
CREATE TABLE appointments(
appointment_id INT AUTO_INCREMENT PRIMARY KEY,
patients_id INT NOT NULL,
doctor_id INT NOT NULL,
appointment_date DATETIME NOT NULL,
reason TEXT,
status ENUM('Scheduled','Completed','Cancelled') DEFAULT 'Scheduled',
FOREIGN KEY (patients_id) REFERENCES patients(patient_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- Create Treatments table
CREATE TABLE treatments(
treatment_id INT AUTO_INCREMENT PRIMARY KEY,
appointment_id INT NOT NULL,
description TEXT NOT NULL,
treatment_date DATE NOT NULL,
FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- create medications table
CREATE TABLE medications(
medication_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE,
dosage VARCHAR(50) NOT NULL,
instructions TEXT
);

-- create appointments_medications (Many-to-Many)
CREATE TABLE appointment_medications(
appointment_id INT NOT NULL,
medication_id INT NOT NULL,
quantity INT DEFAULT 1,
PRIMARY KEY (appointment_id, medication_id),
FOREIGN KEY(appointment_id) REFERENCES appointments(appointment_id),
FOREIGN KEY(medication_id) REFERENCES medications(medication_id)
);