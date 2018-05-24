GRANT ALL ON *.* TO maxuser@'%' IDENTIFIED BY 'maxpwd';
GRANT ALL ON *.* to maxadmin@'%' identified by 'maxpwd';
GRANT REPLICATION SLAVE on *.* to 'repl'@'%' identified by 'replpwd';
FLUSH PRIVILEGES;
