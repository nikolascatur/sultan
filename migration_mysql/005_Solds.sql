CREATE TABLE machines (
	`id` INT NOT NULL AUTO_INCREMENT,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` TIMESTAMP NULL,
    `name` VARCHAR(64) NOT NULL DEFAULT '',
    PRIMARY KEY(`id`)
) ENGINE = InnoDB;

-- payment_type : 0 = Cash; 1 = Card
CREATE TABLE solds (
	`id` INT NOT NULL AUTO_INCREMENT,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `number` VARCHAR(64) NOT NULL DEFAULT '',
    `user_id` INT NOT NULL,
    `machine_id` INT NOT NULL,
    `total` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `payment_type` TINTYINT NOT NULL DEFAULT 1,
    `card_number` VARCHAR(16) NULL,
    `payment` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE solditems (
	`id` INT NOT NULL AUTO_INCREMENT,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`barcode` VARCHAR(64) NOT NULL,
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`sold_id` INT NOT NULL,
	`count` FLOAT NOT NULL,
	`price` DECIMAL(15, 2) NOT NULL,
	`total` DECIMAL(15, 2) NOT NULL,
    `buy_price` DECIMAL(15, 2) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO machines(name) VALUES ('Cashier 1');
