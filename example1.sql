create table Employee(id integer,firstName varchar(100),lastName varchar(100),city varchar(100),state varchar(100));
insert into Employee(id,firstName,lastName,city,state) values(10330, "John","John","NY","NY");
insert into Employee(id,firstName,lastName,city,state) values(10449, "Sarah","Lebat","Melbourne","Bourke");
insert into Employee(id,firstName,lastName,city,state) values(11012, "Jon","Dallas","NY","NY");
insert into Employee(id,firstName,lastName,city,state) values(11013, "Gheorghe","Honey","NY","NY");
insert into Employee(id,firstName,lastName,city,state) values(11014, "Anton","Savar","NY","NY");


create table Payment(id integer,Salarydate varchar(100),month integer,value integer);
insert into  Payment(id,Salarydate,month,value) values(10330, "June",6,128);
insert into  Payment(id,Salarydate,month,value) values(10330, "July",7,158);
insert into  Payment(id,Salarydate,month,value) values(10330, "Aug",8,133);
insert into  Payment(id,Salarydate,month,value) values(10330, "Sep",9,120);
insert into  Payment(id,Salarydate,month,value) values(10330, "Oct",10,188);
insert into  Payment(id,Salarydate,month,value) values(10330, "Nov",11,160);
insert into  Payment(id,Salarydate,month,value) values(10330, "Dec",12,105);
insert into  Payment(id,Salarydate,month,value) values(10449, "Sep",9,150);
insert into  Payment(id,Salarydate,month,value) values(10449, "Oct",10,158);
insert into  Payment(id,Salarydate,month,value) values(10449, "Nov",11,160);
insert into  Payment(id,Salarydate,month,value) values(10449, "Dec",12,180);

/*Question 1 answer */

select firstname, lastname, sum(value) from (select e.id, e.firstname, e.lastname, p.value from Employee as e inner join Payment as p where e.id = p.id) group by id;

/*Question 2 answer */


select * from Employee where firstname like 'J%';