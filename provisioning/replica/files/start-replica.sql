STOP SLAVE;
RESET SLAVE;
set global gtid_slave_pos = '0-101-4';
CHANGE MASTER TO master_host='192.168.2.101',
  master_user='repl',
  master_password='replpwd',
  master_use_gtid=slave_pos;
START SLAVE;
