CREATE ROLE replicator WITH REPLICATION PASSWORD 'password' LOGIN;
CREATE DATABASE PostgreSQL owner "user";

\c postgresql user;

CREATE TABLE email_addresses (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE phone_numbers (
    id SERIAL PRIMARY KEY,
    phone_number VARCHAR(20) NOT NULL
);

INSERT INTO email_addresses (email) VALUES
('example1@example.com'),
('example2@example.com');

INSERT INTO phone_numbers (phone_number) VALUES
('8 800 555-35-35'),
('8 800 234-33-11');
