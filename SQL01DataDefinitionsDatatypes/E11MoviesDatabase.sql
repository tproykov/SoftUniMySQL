CREATE DATABASE movies;
USE movies;
CREATE TABLE directors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(50) NOT NULL,
    notes VARCHAR(255)
);
INSERT INTO directors (director_name, notes) VALUES
    ('Alfred Hitchcock', 'this is a random note'),
    ('Steven Spielberg', 'this is another note'),
    ('Georgios Lanthimos', 'lorem ipsum'),
    ('George Lucas', NULL),
    ('Ridley Scott', NULL);

CREATE TABLE genres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(30) NOT NULL,
    notes VARCHAR(255)
);
INSERT INTO genres (genre_name, notes) VALUES
        ('Comedy', 'a note about this genre'),
        ('Action', 'annother note about genre'),
        ('Thriller', 'note in latin'),
        ('Horror', NULL),
        ('Sci-fi', NULL);

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL,
    notes VARCHAR(255)
);

INSERT INTO categories (id, category_name, notes) VALUES
        (1, 'Newly Added', NULL),
        (2, 'Watchlist', NULL),
        (3, 'Watched', NULL),
        (4, 'Top Rating', NULL),
        (5, 'Discarded', 'this is a note about a this category');

CREATE TABLE movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    director_id INT,
    copyright_year YEAR,
    length TIME,
    genre_id INT,
    category_id INT,
    rating DOUBLE,
    notes VARCHAR(255)
);
INSERT INTO movies (title, director_id, copyright_year, length, genre_id, category_id, rating, notes) VALUES
        ('Predator', 5, 1981, '01:45:00', 4, 2, 8.1, NULL),
        ('Birds', 1, 1965, '02:15:00', 3, 3, 9.1, NULL),
        ('Poor Things', 3, 2023, '02:20:00', 1, 1, 8.9, 'movie note'),
        ('Duel', 2, 1970, '01:30:00', 3, 3, 7.5, NULL),
        ('Star Wars', 4, 1979, '01:50:00', 5, 5, 8.3, 'bla bla');