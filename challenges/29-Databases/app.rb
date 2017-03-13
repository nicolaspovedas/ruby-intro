require "sqlite3"

db = SQLite3::Database.new "database3.db"

db.execute ("CREATE TABLE `students` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` VARCHAR,
  `last_name` VARCHAR,
  `gender` VARCHAR,
  `birthday` DATE,
  `email` VARCHAR,
  `phone` VARCHAR
);")

puts db.execute ("select * from students")