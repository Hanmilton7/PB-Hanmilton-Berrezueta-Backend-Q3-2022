CREATE TABLE vaccines (
	vaccine_id INT IDENTITY(1,1) PRIMARY KEY,
	vaccine_name VARCHAR (100) NOT NULL,
	vaccine_dose INT NOT NULL	
);
CREATE TABLE types (
	type_id INT IDENTITY(1,1) PRIMARY KEY,
	type_name VARCHAR (100) NOT NULL,
);
CREATE TABLE users (
	user_id INT IDENTITY(1,1) PRIMARY KEY,
	username VARCHAR (25) NOT NULL,
	password VARCHAR (50) NOT NULL,
	first_name VARCHAR (100) NOT NULL,
	last_name VARCHAR (100) NOT NULL,
	email VARCHAR (100) NOT NULL,
	image VARCHAR (100) DEFAULT NULL,
    vaccine_id INT NULL,
    type_id INT NOT NULL,
    FOREIGN KEY (vaccine_id) REFERENCES vaccines (vaccine_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (type_id) REFERENCES types (type_id) ON DELETE CASCADE ON UPDATE CASCADE
);