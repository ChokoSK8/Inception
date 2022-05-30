CREATE DATABASE IF NOT EXISTS wp-data DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE DATABASE IF NOT EXISTS db-data DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS abrun@'%' IDENTIFIED BY ab-pass;
CREATE USER IF NOT EXISTS chuck@'%' IDENTIFIED BY ch-pass;
GRANT ALL PRIVILEGES ON *.* TO abrun@'%' IDENTIFIED BY ab-pass;
GRANT ALL PRIVILEGES ON wp-data.* TO chuck@ IDENTIFIED BY ch-pass;
FLUSH PRIVILEGES;
