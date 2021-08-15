DROP TABLE IF EXISTS usersPreferences, movies, users;

CREATE TABLE users (
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(50),
  email VARCHAR(50),
  PRIMARY KEY (user_id)
);

CREATE TABLE userPreferences (
  user_id INT NOT NULL,
  director VARCHAR(50),
  actors VARCHAR(50),
  writers VARCHAR(50),
  genre VARCHAR(50),
  production VARCHAR(50),
  PRIMARY KEY (user_id),
  FOREIGN KEY (director)
  FOREIGN KEY (actors)
  FOREIGN KEY (writers)
  FOREIGN KEY (genre)
  FOREIGN KEY (production)
);

CREATE TABLE movies (
  imdbid INT NOT NULL,
  title VARCHAR(100),
  director VARCHAR(50),
  actors VARCHAR(50),
  writers VARCHAR(50),
  genres VARCHAR(50),
  production VARCHAR(50),
  PRIMARY KEY (imdbid),
  FOREIGN KEY (director)
  FOREIGN KEY (actors)
  FOREIGN KEY (writers)
  FOREIGN KEY (genre)
  FOREIGN KEY (production)
  REFERENCES userPreferences (user_id)
);