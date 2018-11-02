GRANT ALL ON *.* TO maxuser@'%' IDENTIFIED BY 'maxpwd';
GRANT REPLICATION SLAVE on *.* to 'repl'@'%' identified by 'replpwd';
FLUSH PRIVILEGES;
