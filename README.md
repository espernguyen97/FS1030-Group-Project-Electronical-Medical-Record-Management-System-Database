<h3 align="center">Database</h3>


### Installation
1. Create the Database
   ```sh
   CREATE DATABASE IF NOT EXISTS emrsystem;
   ```
2. Create tables and insert default data
```sh
Run emrsystem.sql located in dbsql folder as a query against the emrsystem Database that was created in step 1
```

3. Ensure you have a user created called emrsystem_admin with the password 12345678
```sh
USE mysql;
CREATE USER 'emrsystem_admin'@'localhost' IDENTIFIED WITH mysql_native_password BY '12345678';
GRANT ALL PRIVILEGES ON *.* TO 'emrsystem_admin'@'localhost';
flush privileges;
```