stop slave;
reset slave;
set global gtid_slave_pos = "0-11-6";
change master to master_host='192.168.100.11',
  master_user='repl',
  master_password='replpwd',
  master_use_gtid=slave_pos;
start slave;
