GRANT ALL               ON *.* TO maxuser@'%' IDENTIFIED BY 'maxpwd';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%'  IDENTIFIED BY 'replpwd';
FLUSH PRIVILEGES;
