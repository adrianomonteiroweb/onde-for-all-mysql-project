CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE account_plan (
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(40) DEFAULT 'gratuito',
price decimal(3, 2)
);

CREATE TABLE `user` (
user_id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50),
age INT,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES account_plan(plan_id)
);

CREATE TABLE artist (
artist_id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100)
);

CREATE TABLE followers (
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
CONSTRAINT PRIMARY KEY (user_id, artist_id)
);

CREATE TABLE album (
album_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

CREATE TABLE song (
song_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE `history` (
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (song_id) REFERENCES song(song_id),
CONSTRAINT PRIMARY KEY (user_id, song_id)
);

INSERT INTO artist (`name`)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO account_plan (plan, price)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);
       
INSERT INTO album (title, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);
       
INSERT INTO user (`name`, age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);
       
INSERT INTO followers (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
       
INSERT INTO song (title, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);
       
INSERT INTO `history` (user_id, song_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
