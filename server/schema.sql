-- CREATE DATABASE chat;

USE chat;

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
--
-- ---
DROP TABLE IF EXISTS `rooms`;
DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `message_id` INTEGER NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` VARCHAR(280) NOT NULL DEFAULT '',
  `username` VARCHAR(25) NOT NULL DEFAULT '',
  `roomname` VARCHAR(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`)
);

-- ---
-- Table 'rooms'
--
-- ---



-- CREATE TABLE `rooms` (
--   `room_id` INTEGER NOT NULL AUTO_INCREMENT,
--   `roomname` VARCHAR(25) NOT NULL DEFAULT 'lobby',
--   `message_id_messages` INTEGER NULL DEFAULT NULL,
--   PRIMARY KEY (`room_id`)
-- );

-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE `rooms` ADD FOREIGN KEY (message_id_messages) REFERENCES `messages` (`message_id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`message_id`,`created_at`,`text`,`username`) VALUES
-- ('','','','');
-- INSERT INTO `rooms` (`room_id`,`roomname`,`message_id_messages`) VALUES
-- ('','','');