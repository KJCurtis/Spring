

CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT into users (username, email, password)
values ('admin', 'admin@admin.com', '$2a$12$qvN2lmHtrbpwBABUKezD8.uYc/KgyaXlBnQmzzULG4HnfO1/Gq6.2');

INSERT INTO ads (user_id, title, description) VALUES (1, 'sample ad title', 'sample ad description advertising stuff to sell with random text that is coming off the top of my head to fill in pace to simulate a decent sized description');

select ads.* , users.username from ads join users ON users.id = ads.user_id;