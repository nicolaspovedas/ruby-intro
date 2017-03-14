require "sqlite3"

# Set up database connection; creates database file if it doesn't exist
$db = SQLite3::Database.new("animal_shelter.db", results_as_hash: true)

# Create dogs table
$db.execute <<SQL
CREATE TABLE dogs (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(64),
age INTEGER,
weight INTEGER);
SQL