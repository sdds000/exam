DROP DATABASE IF EXISTS exam;
CREATE DATABASE exam;

# user
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user
(
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  role     INT(1) COMMENT '0-admin;1-user'
);

INSERT INTO exam.user VALUES (NULL, 'a', 'a', 0);
INSERT INTO exam.user VALUES (NULL, 'b', 'b', 1);
INSERT INTO exam.user VALUES (NULL, 'c', 'c', 1);

DROP TABLE IF EXISTS exam.question;
CREATE TABLE exam.question (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  question VARCHAR(255)
);

DROP TABLE IF EXISTS exam.answer;
CREATE TABLE exam.answer (
  id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  answer      VARCHAR(255),
  user_id     INT(11) UNSIGNED,
  question_id INT(11) UNSIGNED
);

ALTER TABLE exam.answer
ADD CONSTRAINT fk_answer_user_id FOREIGN KEY (user_id) REFERENCES exam.user (id);
ALTER TABLE exam.answer
ADD CONSTRAINT fk_answer_question_id FOREIGN KEY (question_id) REFERENCES exam.question (id);


USE exam;

SELECT
  q.question,
  a.answer,
  u.username
FROM question q, answer a, user u
WHERE q.id = a.question_id AND u.id = a.user_id;

SELECT * from answer;
