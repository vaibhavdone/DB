DROP DATABASE IF EXISTS Car;
CREATE DATABASE Car;
USE Car;


CREATE TABLE Car (
    Car_id SMALLINT(5) NOT NULL DEFAULT 0,
    Car_name CHAR(128) DEFAULT NULL,
    PRIMARY KEY (Car_id)
)engine=innoDB;

CREATE TABLE Color (
    Car_id SMALLINT(5) NOT NULL DEFAULT 0,
    color_id SMALLINT(4) NOT NULL DEFAULT 0,
   color_name CHAR(128) DEFAULT NULL,
    PRIMARY KEY (Car_id,color_id),
    FOREIGN KEY (Car_id) REFERENCES Car(Car_id)
)engine=innoDB;

CREATE TABLE Model (
    Car_id SMALLINT(5) NOT NULL DEFAULT 0,
    Model_id SMALLINT(4) NOT NULL DEFAULT 0,
    Price CHAR(128) DEFAULT NULL,
    PRIMARY KEY (Car_id,Model_id),
    FOREIGN KEY (Car_id) REFERENCES Car(Car_id)
)engine=innoDB;

-- CREATE TABLE Rating (
--     Car_id SMALLINT(5) NOT NULL DEFAULT 0,
--     rating_id SMALLINT(4) NOT NULL DEFAULT 0,
--     rating CHAR(128) DEFAULT NULL,
--     PRIMARY KEY (Car_id,rating_id),
--     FOREIGN KEY (Car_id) REFERENCES Car(Car_id)
-- )engine=innoDB;

CREATE TABLE Safety_ (
    Car_id SMALLINT(5) NOT NULL DEFAULT 0,
    Safety_id SMALLINT(5) NOT NULL DEFAULT 0,
    no_of_airBags SMALLINT(4) NOT NULL DEFAULT 0,
    rating CHAR(128) DEFAULT NULL,
    PRIMARY KEY (Car_id,Safety_id),
    FOREIGN KEY (Car_id) REFERENCES Car(Car_id)
)engine=innoDB;




INSERT INTO Car VALUES (1, "BMW");
INSERT INTO Car VALUES (2, "Benz");
INSERT INTO Car VALUES (3, "Kia");
INSERT INTO Car VALUES (4, "Lamborghini");
INSERT INTO Car VALUES (5, "Celerio");


INSERT INTO Color VALUES (1, 1, "White");
INSERT INTO Color VALUES (2, 2, "Blue");
INSERT INTO Color VALUES (3, 3, "Gray");
INSERT INTO Color VALUES (4, 4, "Yellow");
INSERT INTO Color VALUES (5, 5, "Black");




INSERT INTO Model VALUES (1, 1,"36.50 Lakh");
INSERT INTO Model VALUES (1, 2,"37.00 Lakh");
INSERT INTO Model VALUES (1, 3,"37.50 Lakh" );
INSERT INTO Model VALUES (2, 1,"42.00 Lakh");
INSERT INTO Model VALUES (2, 2,"44.50 Lakh" );
INSERT INTO Model VALUES (2, 3,"46.00 Lakh");
INSERT INTO Model VALUES (3, 1, "30.00 Lakh");
INSERT INTO Model VALUES (3, 2,"32.01 Lakh");
INSERT INTO Model VALUES (3, 3,"33.00 Lakh");
INSERT INTO Model VALUES (4, 1, "3.10 Crore");
INSERT INTO Model VALUES (4, 2,"4.0 Crore");
INSERT INTO Model VALUES (4, 3,"4.05 Crore");
INSERT INTO Model VALUES (5, 1,"4.65 Lakh");
INSERT INTO Model VALUES (5, 2,"5.4 Lakh");
INSERT INTO Model VALUES (5, 3,"5.6 Lakh");

INSERT INTO Safety_ VALUES (1, 1,2,"First Class");
INSERT INTO Safety_ VALUES (2, 2,1,"Second Class");
INSERT INTO  Safety_ VALUES (3, 3,6, "First Class");
INSERT INTO Safety_ VALUES (4, 4,2,"First Class");
INSERT INTO Safety_ VALUES (5, 5,1,"First Class");



