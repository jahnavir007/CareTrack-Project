CARETRACK - CHILDCARE MANAGEMENT SYSTEM (PHP + MySQL)

Features included:
- Dashboard counts and lists
- Add child profile, link parent/guardian
- Add parent/guardian contact
- Add staff member and role
- Record daily attendance (Present / Absent / Late)
- Delete child record

SETUP USING XAMPP:
1. Install and open XAMPP. Start Apache and MySQL.
2. Extract the CareTrack_Project folder into: C:\xampp\htdocs\
3. Open http://localhost/phpmyadmin
4. Select Import and import database.sql.
5. Open config.php and set your MySQL username/password if different.
6. Visit http://localhost/CareTrack_Project/

NOTE:
This is a student prototype. Before real deployment, add authentication/roles,
CSRF protection, stronger validation, audit logs, backups, and privacy safeguards.
CareTrack – Childcare Management System

CareTrack is a web-based Childcare Management System developed to simplify and organize childcare centre operations. The system provides a structured way to manage child records, parent information, staff details, and attendance.

📌 Project Overview

Managing childcare centre information manually can be time-consuming and difficult to maintain.

CareTrack aims to make childcare management easier by providing a centralized system for maintaining important records and managing daily activities.

✨ Features

* Child Management – Add and manage child records.
* Parent Management – Maintain parent information.
* Staff Management – Add and manage staff records.
* Attendance Management – Record and manage attendance.
* Child Record Management – Add and delete child records.
* Database Integration – Store and manage information using MySQL.

🛠️ Technologies Used

* PHP
* MySQL
* HTML
* CSS
* JavaScript
* Laragon
* HeidiSQL

📂 Project Structure

CareTrack_Project/
│
├── assets/
│   └── Project assets
│
├── attendance_add.php
├── child_add.php
├── child_delete.php
├── config.php
├── database.sql
├── index.php
├── parent_add.php
├── staff_add.php
└── README.md

⚙️ Installation and Setup

Follow these steps to run the project locally.

1. Install Required Software

Install the following:

* Laragon
* Web browser

2. Clone the Repository

git clone https://github.com/YOUR-USERNAME/CareTrack_Project.git

3. Move the Project

Place the project folder inside the Laragon web directory:

C:\laragon\www\

The project path should be:

C:\laragon\www\CareTrack_Project

4. Start Laragon

Open Laragon and start:

* Apache
* MySQL

5. Import the Database

1. Open HeidiSQL or phpMyAdmin.
2. Connect to your local MySQL server.
3. Create the project database if it does not already exist.
4. Select the project database.
5. Import the database.sql file.

6. Configure Database Connection

Open config.php and configure the database connection details according to your local MySQL setup.

Example:

<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "YOUR_DATABASE_NAME";
?>

Replace YOUR_DATABASE_NAME with the actual database name used by your project.

7. Run the Project

Open your browser and visit:

http://localhost/CareTrack_Project/

The CareTrack application should now be accessible locally.

🎯 Project Objective

The objective of CareTrack is to provide a simple and organized digital solution for childcare management by maintaining child, parent, staff, and attendance records in a centralized database.

👩‍💻 Developed By

Student Project – Childcare Management System

📄 License

This project is developed for educational purposes.
