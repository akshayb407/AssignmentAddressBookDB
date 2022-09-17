--UC1 - create database 
create database AddressBookService;

--UC2 -> create table of addressBook;
create table AddressBook (FirstName varchar(150) , lastName varchar(150) , address varchar(150), 
city varchar(30) , state varchar(30) , zipCode int , phoneNumber bigint , email varchar(50) );  


--uc3 -> insert new contact in addressBook ;
insert into addressbook values ('Akshay','Bhagwat','kerva Nagar', 'Pune', 'Maharashtra','411046',8087148746,'ab@gmail.com')
insert into addressbook values ('Pratik','Bhandurge','Khandave Nagar', 'Pune', 'Maharashtra','411066',9087448744,'pb@gmail.com')

--uc4 -> abitlity to edit 
update addressbook set address = 'Chandan Nagar' where FirstName = 'Akshay';

--uc5 -> ability to delete contact;
delete from addressbook where FirstName = 'Akshay'; 

--uc6 -> ability to retrive person belong to city or state;
select * from addressbook where state = 'Maharashtra' and city = 'Pune';

--uc7 -> ability to select contact
select count(city) from addressbook where state = 'Maharashtra' and city = 'Pune';

--uc8 -> sort by firstName
select * from addressbook where city = 'Pune' order by FirstName;

--uc 9 -> alter table to add type ;
alter table addressbook add type varchar(50) after lastName;

--uc 10 ->grt count by type;
select count(FirstName) from addressbook where type = 'Family' ;

--uc 11 -> to add in both family & friend
insert into addressbook values ('Akshay','Bhagwat', 'Family','Chandan Nagar', 'Pune','Maharashtra',411046,8087148746,'ab@gmail.com');

insert into addressbook values ('Pratik','Bhandurge', 'Frined','Khandave Nagar', 'Pune','Maharashtra',431103,9876543210,'pb@gmail.com');


select * from  AddressBook