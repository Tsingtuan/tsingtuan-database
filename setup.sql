CREATE TABLE university (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  university_code CHAR(5)
);

CREATE TABLE organization (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  university_code CHAR(5) REFERENCES university(university_code),
  organization_id VARCHAR(255),
  image VARCHAR(255)
);

CREATE TABLE student (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  wechat_id VARCHAR(255),
  wechat_name VARCHAR(255),
  university_code CHAR(5) REFERENCES university(university_code),
  avatar_image VARCHAR(255)
);

CREATE TABLE position (
  id INT PRIMARY KEY AUTO_INCREMENT,
  organization_id VARCHAR(255) REFERENCES organization(organization_id),
  division VARCHAR(255),
  name VARCHAR(255),
  wechat_id VARCHAR(255) REFERENCES student(wechat_id)
)
