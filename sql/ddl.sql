DROP DATABASE IF EXISTS exam;
CREATE DATABASE exam;

# user
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user
(
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255)
);

INSERT INTO exam.user VALUES (NULL, 'a', 'a');

# word
DROP TABLE IF EXISTS exam.word;
CREATE TABLE exam.word (
  id       INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  english  VARCHAR(255),
  chinese  VARCHAR(255),
  property VARCHAR(255),
  sentence VARCHAR(2048)
);

USE exam;

TRUNCATE  TABLE word;
