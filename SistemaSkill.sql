CREATE DATABASE sistema_skill;

CREATE TABLE login (
    id_login SERIAL PRIMARY KEY,
    login VARCHAR(30) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE skill (
    id_skill SERIAL PRIMARY KEY,
    skill VARCHAR(255) NOT NULL,
    level VARCHAR(255) NOT NULL,
    id_login INT,
    FOREIGN KEY (id_login) REFERENCES login(id_login)
);

INSERT INTO login (login, senha) VALUES ('usuario1', '123');
