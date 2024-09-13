USE minions;
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture MEDIUMBLOB,
    last_login_time DATETIME,
    is_deleted BOOLEAN
);
INSERT INTO users (username, password, profile_picture, last_login_time, is_deleted)
    VALUES
        ('sam25', 'password123', NULL, '2024-09-09 23:23:23', 0),
        ('lisa30', 'sharon25', NULL, '2024-01-01 05:25:25', 0),
        ('mich122', 'pass001', NULL, '2024-09-09 17:17:17', 1),
        ('pete007', 'PeterPan', NULL, '2024-06-06 12:25:23', 1),
        ('jesusMe01', 'HolyTrinity', NULL, '2024-02-02 03:03:22', 0);