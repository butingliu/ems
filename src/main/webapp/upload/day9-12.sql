drop table emp;
drop table dept;
select * from use;
select * from dept;
create table use(
username varchar2(20) primary key,
password varchar2(20)
);
create table emp(
id number(9) primary key,
name varchar2(50),
salary number(15,3),
age number(3),
dept_id number(6) references dept(dept_id) 
);

create table dept(
dept_id number(6) primary key,
dept_name varchar2(50)
);
drop sequence emp_seq;
drop sequence dept_seq;
create sequence emp_seq;
create sequence dept_seq;
create sequence use_seq;

insert into use values('����','123456');
insert into use values('����','123456');
insert into dept values(dept_seq.nextval,'����');
insert into dept values(dept_seq.nextval,'���۲�');
insert into dept values(dept_seq.nextval,'������');


insert into emp values(emp_seq.nextval,'����',8600.0,18,2);
insert into emp values(emp_seq.nextval,'�ٺ�',7666.0,18,1);
insert into emp values(emp_seq.nextval,'�Ǻ�',6666.0,18,3);
insert into emp values(emp_seq.nextval,'����',5666.0,18,1);
insert into emp values(emp_seq.nextval,'�ߺ�',4666.0,18,2);
insert into emp values(emp_seq.nextval,'����',3666.0,18,1);
insert into emp values(emp_seq.nextval,'����',2666.0,18,2);
insert into emp values(emp_seq.nextval,'�¸�',1666.0,18,3);
commit;
select e.id as eid,e.name as ename,e.salary as esalary,e.age as eage,d.dept_id as deptid,
d.dept_name as deptname from emp e left join dept d on e.dept_id=d.dept_id
delete from emp where id=1
select username,password from use where username='����' and password='123456'
