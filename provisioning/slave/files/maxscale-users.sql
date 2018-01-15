GRANT ALL ON *.* to maxuser@'%' IDENTIFIED BY 'maxpwd';
GRANT SELECT, SHOW DATABASES ON *.* to maxadmin@'%' IDENTIFIED BY 'maxpwd';
FLUSH PRIVILEGES;
