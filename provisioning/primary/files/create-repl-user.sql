GRANT REPLICATION CLIENT,REPLICATION SLAVE ON *.* TO repl@'%' IDENTIFIED BY 'replpwd';
SELECT @@global.gtid_current_pos;
