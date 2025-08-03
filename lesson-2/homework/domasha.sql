CREATE TABLE SOTRUDNIKI(EMPID INT, NAME_S VARCHAR(50), ZARPLATA DECIMAL(10,2))
INSERT INTO SOTRUDNIKI VALUES(1, 'SHOX', 100000) INSERT INTO SOTRUDNIKI VALUES (2, 'AGA', 100000000), (3, 'BEKA', 23123123)
UPDATE SOTRUDNIKI SET ZARPLATA = 7000 WHERE EMPID = 1
DELETE FROM SOTRUDNIKI WHERE ID = 2
DELETE — выборочное удаление строк (можно по условию), TRUNCATE — быстрое удаление всех данных, без условий, DROP — удаляет всю таблицу (и схему, и данные).
ALTER TABLE SOTRUDNIKI ALTER COLUMN NAME_S VARCHAR(100)
ALTER TABLE SOTRUDNIKI ADD OTDEL VARCHAR(50)
ALTER TABLE SOTRUDNIKI ALTER COLUMN ZARPLATA FLOAT
CREATE TABLE DEPARTAMENT(DepartamentID INT PRIMARY KEY, DepartamentName varchar(50))
TRUNCATE table sotrudniki
INSERT INTO DEPARTAMENT VALUES(1, 'MONITORING'), (2, 'HR'), (3, 'KADR'), (4, 'KREDIT'), (5, 'BEZOP')
UPDATE DEPARTAMENT SET DepartamentName = 'Management' WHERE salary > 5000
TRUNCATE TABLE DEPARTAMENT
alter table DEPARTAMENT drop COLUMN DepartamentName
ALTER TABLE Employees RENAME TO StaffMembers
drop table DEPARTAMENT
create table products(productID int primary key, ProductName varchar(50), Category varchar(50), price decimal, zametki int)
alter table products add constraint price check (price> 0)
alter table products add StockQuantity INT DEFAULT 50;
ALTER TABLE products rename column StockQuantity to ProductCategory
insert into products values(1, 2, 3, 4, 5, 6), (2,3,4,5,6,7), (3,4,5,6,7,8), (4,5,6,7,8,9), (5,6,7,8,9,0)
select * into product_bekup from products
alter table prodcts rename to Inventory
alter table Inventory alter column Price FLOAT
alter table products add ProductCode int identity(1000,5)
