!/bin/bash

# Get the current date in YYYY-MM-DD format
current_date=$(date +%Y-%m-%d)

# MySQL database credentials
db_user="username"
db_password="password"
db_name="database_name"

# Path to mysqldump binary
mysqldump_path="/usr/bin/mysqldump"

# Directory to store the dump files
backup_dir="/path/to/dump/directory"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Generate the mysqldump filename
dump_filename="${db_name}_${current_date}.sql"

# Create the mysqldump command and execute it
"$mysqldump_path" -u "$db_user" -p"$db_password" "$db_name" > "$backup_dir/$dump_filename"

echo "Database dumped to: $backup_dir/$dump_filename"
