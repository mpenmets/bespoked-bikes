
CREATE TABLE `Product`(
    `id` MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(250) NOT NULL,
    `Manufacturer` VARCHAR(250) NOT NULL,
    `Style` VARCHAR(250) NOT NULL,
    `Purchase_Price` REAL NOT NULL,
    `Sale_Price` REAL NOT NULL,
    `Qty_On_Hand` TINYINT NOT NULL,
    `Commission_Percentage` FLOAT NOT NULL
);

CREATE TABLE `SalesPerson`(
    `id` MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `First_Name` VARCHAR(250) NOT NULL,
    `Last_Name` VARCHAR(250) NOT NULL,
    `Address` VARCHAR(250) NOT NULL,
    `Phone` VARCHAR(30) NOT NULL,
    `Start_Date` DATE NOT NULL,
    `Termination_Date` DATE,
    `Manager` MEDIUMINT DEFAULT NULL,
    FOREIGN KEY (`Manager`) REFERENCES `SalesPerson`(`id`)
);

CREATE TABLE `Customer`(
    `id` MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `First_Name` VARCHAR(250) NOT NULL,
    `Last_Name` VARCHAR(250) NOT NULL,
    `Address` VARCHAR(250) NOT NULL,
    `Phone` VARCHAR(30) NOT NULL,
    `Start_Date` DATE NOT NULL
);

CREATE TABLE `Sales`(
    `Product` MEDIUMINT NOT NULL,
    `Salesperson` MEDIUMINT NOT NULL,
    `Customer` MEDIUMINT NOT NULL,
    `Sales_Date` DATE NOT NULL,
    FOREIGN KEY (`Product`) REFERENCES `Product`(`id`),
    FOREIGN KEY (`Salesperson`) REFERENCES `SalesPerson`(`id`),
    FOREIGN KEY (`Customer`) REFERENCES `Customer`(`id`)
);

CREATE TABLE `Discount`(
    `Product` MEDIUMINT NOT NULL,
    `Begin_Date` DATE NOT NULL,
    `End_Date` DATE NOT NULL,
    `Discount_Percentage` REAL NOT NULL,
    FOREIGN KEY(`Product`) REFERENCES `Product`(`id`)
);
