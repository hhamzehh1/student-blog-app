CREATE DATABASE IF NOT EXISTS blogdb;
USE blogdb;
CREATE TABLE IF NOT EXISTS posts (
 id INT AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 content TEXT NOT NULL
);
INSERT INTO posts (title, content) VALUES
('Welcome to the Blog', 'This is the first post.'),
('Docker Rocks!', 'Containerization makes deployment easy.'),
('Hello from EC2', 'Running on AWS EC2 with Docker.');
