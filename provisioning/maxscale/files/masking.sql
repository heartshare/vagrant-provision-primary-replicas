create table masking1 (card_number1 char(20));
create table masking2 (card_number2 char(20));
create table masking3 (card_number3 char(20));

insert into masking1 values ('1234-5678-9012-3456');
insert into masking2 values ('1234-5678-9012-3456');
insert into masking3 values ('1234-5678-9012-3456');

select * from masking1;
select * from masking2;
select * from masking3;
