require "sqlite3"
require "faker"

# Set up database connection; creates database file if it doesn't exist
$db = SQLite3::Database.new("animal_shelter.db", results_as_hash: true)

# Create dogs table
$db.execute <<-SQL
CREATE TABLE dogs (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(64),
age INTEGER,
weight INTEGER);
SQL

10.times do |i|
	dog = [Faker::Cat.name, rand(20) + 1, rand(20) + 1]
	$db.execute("insert into dogs (name, age, weight) values (?, ?, ?)", dog)
end
