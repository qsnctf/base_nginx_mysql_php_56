CREATE DATABASE qsnctf;

USE qsnctf;

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username TEXT,
    password TEXT
);

INSERT INTO user (username, password) VALUES ('admin', '123456');
INSERT INTO user (username, password) VALUES ('user', 'qsnctf_flag');
