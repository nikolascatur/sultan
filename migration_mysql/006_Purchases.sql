-- payment type : 1 = Cash; 2 = Non Cash
CREATE TABLE purchases (
	`id` INT NOT NULL AUTO_INCREMENT,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL,
    `suplier_id` INT NOT NULL,
    `number` VARCHAR(64) NOT NULL DEFAULT '',
    `payment_type` TINYINT NOT NULL DEFAULT 1,
    `payment_number` VARCHAR(64) NULL,
    `payment_date` DATE NULL,
    `deadline` DATE NULL,
    `total` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `discount` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE purchaseitems (
	`id` INT NOT NULL AUTO_INCREMENT,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL,
    `purchase_id` INT NOT NULL,
    `barcode` VARCHAR(64) NOT NULL,
    `count` FLOAT NOT NULL DEFAUL 0,
    `price` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `total` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    INDEX `BARCODE` (`barcode` ASC),
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;
