CREATE TABLE machines (
	`id` INT PRIMARY KEY,
    `created_at` DATETIME DEFAULT (datetime('now', 'localtime')),
    `updated_at` DATETIME DEFAULT (datetime('now', 'localtime')),
    `deleted_at` DATETIME NULL,
    `name` VARCHAR(64) NOT NULL DEFAULT ''
);
-- separator
CREATE TABLE solds (
	`id` INT PRIMARY KEY,
    `created_at` DATETIME DEFAULT (datetime('now', 'localtime')),
    `number` VARCHAR(64) NOT NULL DEFAULT '',
    `user_id` INT NOT NULL,
    `machine_id` INT NOT NULL,
    `total` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `payment_type` TINTYINT NOT NULL DEFAULT 1,
    `card_number` VARCHAR(16) NULL,
    `payment` DECIMAL(15, 2) NOT NULL DEFAULT 0
);
-- separator
CREATE TABLE solddatas (
	`id` INT PRIMARY KEY,
    `created_at` DATETIME DEFAULT (datetime('now', 'localtime')),
	`barcode` VARCHAR(64) NOT NULL,
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`sold_id` INT NOT NULL,
	`number` VARCHAR(128) NOT NULL DEFAULT '',
	`count` FLOAT NOT NULL,
	`price` DECIMAL(15, 2) NOT NULL,
	`total` DECIMAL(15, 2) NOT NULL
);
-- separator
CREATE INDEX SOLDDATA ON solddatas (barcode);
-- separator
INSERT INTO machines(name) VALUES ('Cashier 1');