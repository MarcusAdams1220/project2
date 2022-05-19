CREATE DATABASE movie_reviews_app;

\c movie_reviews_app

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    movie_id TEXT,
    user_id INTEGER,
    review TEXT
);