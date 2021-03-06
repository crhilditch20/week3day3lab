DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS albums;

CREATE TABLE artists(
  id SERIAL8 primary key,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE albums(
  id SERIAL8 primary key,
  title VARCHAR(255),
  genre VARCHAR(255),
  artist_id INT2 references artists(id)
);