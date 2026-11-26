CREATE DATABASE IF NOT EXISTS caretrack CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE caretrack;
CREATE TABLE IF NOT EXISTS parents(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,phone VARCHAR(25),email VARCHAR(120));
CREATE TABLE IF NOT EXISTS staff(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,role VARCHAR(80));
CREATE TABLE IF NOT EXISTS children(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,age TINYINT UNSIGNED NOT NULL,parent_id INT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,FOREIGN KEY(parent_id) REFERENCES parents(id) ON DELETE SET NULL);
CREATE TABLE IF NOT EXISTS attendance(id INT AUTO_INCREMENT PRIMARY KEY,child_id INT NOT NULL,date DATE NOT NULL,status ENUM('Present','Absent','Late') NOT NULL DEFAULT 'Present',UNIQUE KEY unique_child_day(child_id,date),FOREIGN KEY(child_id) REFERENCES children(id) ON DELETE CASCADE);
-- Optional sample data:
INSERT INTO parents(name,phone,email) VALUES ('Ananya Rao','9876543210','ananya@example.com');
INSERT INTO staff(name,role) VALUES ('Meera S','Caregiver');
INSERT INTO children(name,age,parent_id) VALUES ('Aarav',4,1);
