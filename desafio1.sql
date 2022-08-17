DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artist(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(45) NOT NULL ,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.plan(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(20) NOT NULL,
    plan_price DECIMAL NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(45) NOT NULL,
    release_date DATE NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id) 
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.tracks(
    track_id INT PRIMARY KEY AUTO_INCREMENT,
    track_name VARCHAR(45) NOT NULL,
    duration DECIMAL NOT NULL,
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
    FOREIGN KEY (album_id) REFERENCES album (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(45) NOT NULL,
    user_last_name VARCHAR(45),
    age INT ,
    plan_id INT NOT NULL,
    subscribe_date DATE NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plan (plan_id)
  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.history(
    user_id INT NOT NULL,
    track_id INT NOT NULL,
    reproduction_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (track_id) REFERENCES tracks (track_id)
  ) engine = InnoDB;


   CREATE TABLE SpotifyClone.followed_artists(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
  ) engine = InnoDB;



  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');