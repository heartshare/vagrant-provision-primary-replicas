DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
DROP TABLE IF EXISTS t3;
CREATE TABLE t1 (
  name varchar(10) DEFAULT NULL,
  card_number1 varchar(16) DEFAULT NULL
);
CREATE TABLE t2 (
  name varchar(10) DEFAULT NULL,
  card_number2 varchar(16) DEFAULT NULL
);
CREATE TABLE t3 (
  name varchar(10) DEFAULT NULL,
  card_number3 varchar(16) DEFAULT NULL
);

insert into test.t1 values
  ('Monty', '1234567890123456'),
  ('My',    '1234123412341234'),
  ('Maria', '1111222233334444');

insert into test.t2 values
  ('Monty', '1234567890123456'),
  ('My',    '1234123412341234'),
  ('Maria', '1111222233334444');

insert into test.t3 values
  ('Monty', '1234567890123456'),
  ('My',    '1234123412341234'),
  ('Maria', '1111222233334444');
