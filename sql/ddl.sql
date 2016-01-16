DROP DATABASE IF EXISTS exam;
CREATE DATABASE exam;

# user
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user
(
  id       INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255)
);

INSERT INTO exam.user VALUES (NULL, 'a', 'a');

# message
DROP TABLE IF EXISTS exam.message;
CREATE TABLE exam.message (
  id      INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name    VARCHAR(255),
  content VARCHAR(2048),
  time    DATETIME
);

USE exam;
