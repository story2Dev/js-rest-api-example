CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    role VARCHAR(255) DEFAULT 'user' NOT NULL,
    disabled BOOLEAN DEFAULT FALSE NOT NULL,
    last_seen TIMESTAMP NULL,
    CONSTRAINT unique_email UNIQUE (email)
);