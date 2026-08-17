CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_email VARCHAR(255) UNIQUE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_role ENUM('admin', 'manager', 'user') DEFAULT 'user',

    -- Email verification fields
    user_is_verified TINYINT(1) DEFAULT 0,
    user_verification_token VARCHAR(64),
    user_email_verification_expires DATETIME NULL,

    -- Date parameters
    user_create_at TIMESTAMP DEFAULT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);