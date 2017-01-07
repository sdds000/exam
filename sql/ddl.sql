DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;

# user table
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'admin:管理员; user:普通用户'
)
  COMMENT '用户表';

INSERT INTO exam.user VALUES (NULL, 'a', 'a', 'admin');
INSERT INTO exam.user VALUES (NULL, 'b', 'a', 'user');
INSERT INTO exam.user VALUES (NULL, 'c', 'a', 'user');
INSERT INTO exam.user VALUES (NULL, 'd', 'a', 'user');

# user salary
DROP TABLE IF EXISTS exam.salary;
CREATE TABLE exam.salary (
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  time      VARCHAR(255) COMMENT '工资月份',
  basic     DECIMAL(7, 2) COMMENT '基本工资',
  insurance DECIMAL(7, 2) COMMENT '保险',
  userId    INT COMMENT 'FK'
);

-- FK
ALTER TABLE exam.salary
  ADD CONSTRAINT
  fk_salary_userId
FOREIGN KEY (userId)
REFERENCES exam.user (id);


SELECT *
FROM exam.user;

SELECT *
FROM exam.salary;