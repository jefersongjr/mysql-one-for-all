DROP DATABASE IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;

USE SpotifyClone;

CREATE TABLE artist(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(45) NOT NULL 
);

CREATE TABLE plan(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(20) NOT NULL,
  plan_price DECIMAL NOT NULL
);

CREATE TABLE album(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(45) NOT NULL,
  release_date DATE NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist (artist_id) 
);

CREATE TABLE tracks(
  track_id INT PRIMARY KEY AUTO_INCREMENT,
  track_name VARCHAR(45) NOT NULL,
  duration DECIMAL NOT NULL,
  artist_id INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
  FOREIGN KEY (album_id) REFERENCES album (album_id)
);

CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(45) NOT NULL,
  user_last_name VARCHAR(45),
  age INT ,
  plan_id INT NOT NULL,
  subscribe_date DATE NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plan (plan_id)
);

CREATE TABLE history(
  user_id INT NOT NULL,
  track_id INT NOT NULL,
  reproduction_date DATE NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (track_id) REFERENCES tracks (track_id)
);

CREATE TABLE followed_artists(
  user_id INT NOT NULL,
  track_id INT NOT NULL
);