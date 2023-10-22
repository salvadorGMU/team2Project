CREATE DATABASE IF NOT EXISTS patient_pathway;
USE patient_pathway;

CREATE TABLE IF NOT EXISTS doctors (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name  VARCHAR(25) NOT NULL,
    phone_number VARCHAR(14) NOT NULL,
    email VARCHAR(75) NOT NULL,
    profession VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS patients (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name  VARCHAR(25) NOT NULL,
    phone_number VARCHAR(14) NOT NULL,
    email VARCHAR(75) NOT NULL
);

CREATE TABLE IF NOT EXISTS appointments (
	appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    reason_for_visit VARCHAR(255) NOT NULL,
    diagnosis TEXT,
    prescription TEXT,
    follow_up_date TEXT,
    CONSTRAINT fk_patients FOREIGN KEY (patient_id) REFERENCES patients(id),
	CONSTRAINT fk_doctors FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);