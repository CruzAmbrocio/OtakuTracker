-- Create a new schema
CREATE SCHEMA IF NOT EXISTS main_tracker;

-- Switch to the new schema
SET search_path TO main_tracker;

-- Create the Roles table
CREATE TABLE roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(255) NOT NULL
);

INSERT INTO roles (role_name) VALUES
    ('Admin'),
    ('User'),
    ('Guest');

-- Create the list types table
CREATE TABLE lists (
    list_id SERIAL PRIMARY KEY,
    list_name VARCHAR(255) NOT NULL
);

-- Create the Users table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    role_id INT REFERENCES roles(role_id) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
-- Insert sample users
INSERT INTO users (username, password, email, role_id) VALUES
    ('admin', 'admin123', 'admin@hola.com', 1);