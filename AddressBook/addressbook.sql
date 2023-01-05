-- UC1 - Ability to create a Address Book Service DB
create database address_book;
use address_book;

-- UC2 - Ability to create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes
create table addressbook (firstName varchar(200), lastName varchar(200),address varchar(250), city varchar(100), state varchar(100), zip int, phoneNumber bigint primary key, email varchar(250) unique);
describe addressbook;

-- UC3 - Ability to insert new Contacts to Address Book
insert into addressbook values ('Sai','Prasad','Bangalore','Bang','KA',560005,1234567890,'sai@prasad.com'),
('abc','xyz','Delhi','DEL','HA',550309,9870654321,'abc@xyz.com'),
('def','uvw','HYD','HYDR','TA',523402,32165497780,'def@uvw.com'),
('ghi','sat','KOL','KOLA','KO',750006,123456789876,'ghi@sat.com');
 
 -- UC4- Ability to edit existing contact person using their name
 update addressbook set zip = 123456 where firstName = 'Sai'; 
 
 -- UC5- Ability to delete a person using person's name
 delete from addressbook where firstName = 'ghi';
 
 -- UC6 - Ability to Retrieve Person belonging to a City or State from the Address Book
 select * from addressbook where city = 'Delhi';
 
 -- UC7 - Ability to understand the size of address book by City and State
 select count(*) from  addressbook where city = 'Delhi';
 
 -- UC8 - Ability to retrieve entries sorted alphabetically by Person’s name for a given city
 select firstName,lastName from addressbook order by city desc; -- asc
 
 -- UC9 - Ability to identify each Address Book with name and Type. - Here the
  alter table addressbook add type varchar(100) after zip;
 
 -- UC10 - Ability to get number of contact persons i.e. count by type
 select count(type) from addressbook;
 
 -- UC11 - Ability to add person to both Friend and Family
UPDATE addressbook SET `type` = 'family' WHERE (`phoneNumber` = '1234567890');
UPDATE addressbook SET `type` = 'friend' WHERE (`phoneNumber` = '9870654321');
UPDATE addressbook SET `type` = 'family' WHERE (`phoneNumber` = '32165497780');
UPDATE addressbook SET `type` = 'friend' WHERE (`phoneNumber` = '123456789876');
