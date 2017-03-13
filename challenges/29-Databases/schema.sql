-- ---
-- Table 'contactos'
-- 
-- ---

DROP TABLE IF EXISTS `contactos`;
		
CREATE TABLE `contactos` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR,
  `last_name` VARCHAR,
  `company` VARCHAR,
  `phone` VARCHAR,
  `mail` VARCHAR
);

-- ---
-- Table 'categories'
-- 
-- ---

DROP TABLE IF EXISTS `categories`;
		
CREATE TABLE `categories` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR
);

-- ---
-- Table 'relations'
-- 
-- ---

DROP TABLE IF EXISTS `relations`;
		
CREATE TABLE `relations` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `contactos_id` INTEGER,
  `categories_id` INTEGER
);