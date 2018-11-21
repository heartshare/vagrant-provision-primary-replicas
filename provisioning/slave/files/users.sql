GRANT ALL ON *.* TO maxuser@'%' IDENTIFIED BY 'maxp@ssword2018';
GRANT REPLICATION SLAVE on *.* to 'repl'@'%' identified by 'replp@ssword2018';
FLUSH PRIVILEGES;
