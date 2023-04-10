DROP DATABASE IF EXISTS SONG;

CREATE DATABASE IF NOT EXISTS SONG;

USE SONG;

CREATE TABLE Artist (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  date_of_birth DATE NOT NULL
);

CREATE TABLE Song (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  duration INT NOT NULL,
  explicit BOOL NOT NULL,
  cloud_link VARCHAR(255) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artist(id)
);

CREATE TABLE Genre (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE SongGenre (
  song_id INT NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (song_id, genre_id),
  FOREIGN KEY (song_id) REFERENCES Song(id),
  FOREIGN KEY (genre_id) REFERENCES Genre(id)
);

CREATE TABLE User (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) UNIQUE NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE Favorite (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES User(id),
  FOREIGN KEY (song_id) REFERENCES Song(id)
);

CREATE TABLE Playlist (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES User(id)
);

CREATE TABLE PlaylistSong (
  playlist_id INT NOT NULL,
  song_id INT NOT NULL,
  song_rank INT NOT NULL,
  PRIMARY KEY (playlist_id, song_id),
  FOREIGN KEY (playlist_id) REFERENCES Playlist(id),
  FOREIGN KEY (song_id) REFERENCES Song(id)
);

CREATE INDEX idx_song_artist_id ON Song (artist_id);
CREATE INDEX idx_songgenre_song_id ON SongGenre (song_id);
CREATE INDEX idx_songgenre_genre_id ON SongGenre (genre_id);
CREATE INDEX idx_favorite_user_id ON Favorite (user_id);
CREATE INDEX idx_favorite_song_id ON Favorite (song_id);
CREATE INDEX idx_playlist_user_id ON Playlist (user_id);
CREATE INDEX idx_playlistsong_playlist_id ON PlaylistSong (playlist_id);
CREATE INDEX idx_playlistsong_song_id ON PlaylistSong (song_id);
