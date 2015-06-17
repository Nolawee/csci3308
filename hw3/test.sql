drop table test;

create table test(date_test date);

insert into test values(str_to_date('12-14-1819', '%m-%d-%Y'));

select * from test;

