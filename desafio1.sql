DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artist(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(45) NOT NULL ,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.plan(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(20) NOT NULL,
    plan_price DECIMAL(9, 2) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(45) NOT NULL,
    release_date INT NOT NULL,
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

  INSERT INTO SpotifyClone.artist (artist_name)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.plan (plan_name, plan_price)
  VALUES
    ('gratuito', 0),
    ('familiar', 7.99),
    ('universitario', 5.99),
    ('pessoal', 6.99);

  INSERT INTO SpotifyClone.album (album_name, release_date, artist_id)
  VALUES
    ('Renaissance', 2022 , 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2013, 6);

  INSERT INTO SpotifyClone.tracks (track_name, duration, artist_id, album_id)
  VALUES
    ('BREAK MY SOUL', 279, 1, 1),
    ('VIRGO’S GROOVE', 369, 1, 1),
    ('ALIEN SUPERSTAR', 116, 1, 1),
    ('Don’t Stop Me Now', 203, 2, 1),
    ('Under Pressure', 152, 2, 2),
    ('Como Nossos Pais', 105, 3, 1),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 3, 2),
    ('Samba em Paris', 267, 4, 1),
    ('The Bard’s Song', 244, 5, 1),
    ('I Put A Spell On You', 100, 6, 1);

    INSERT INTO SpotifyClone.users (user_name, age, artist_id, plan_id,  subscribe_date)
  VALUES
    ('Barbara Liskov', 2022 , 1),
    ('Robert Cecil Martin', 1978, 2),
    ('Ada Lovelace', 1982, 2),
    ('Martin Fowler', 1998, 3),
    ('Sandi Metz', 2001, 3),
    ('Paulo Freire', 2003, 4),
    ('Bell Hooks', 2007, 5),
    ('Christopher Alexander', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2013, 6);