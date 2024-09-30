insert into banks values(1,'hdfc','tvm','bharanangham',52525);
insert into banks values(2,'sbi','pala','menichil',58879);
insert into banks values(3,'fbi','ernakulam','thevara',21766);

select * from banks;

commit;
savepoint A;
delete from banks where bankid=2;

rollback to savepoint A;

select * from banks;

insert into banks values(4,'icic','kochi','adimali',63892);
