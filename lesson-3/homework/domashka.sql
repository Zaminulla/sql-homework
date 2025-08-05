Команда BULK INSERT в SQL Server используется для быстрой загрузки большого объема данных из файла (например, .csv, .txt) в таблицу базы данных.
csv, xls, txt, xml
create table Products (ProductId int PRIMARY KEY, ProductName varchar(50), Price decimal(10,2))
Insert into products values(1, 'Igrushki', 3000), (2, 'Xoz tovari', 5000), (3, 'chtoto', 1000)
Null это данные с пустыми значениями, а Not null это запрет на пустые значения
ALTER TABLE Products add constraint productname_unique Unique (ProductName)
ALTER TABLE Products add constraint productname_unique Unique (ProductName) -- это добавлеят ограничение по уникальности в столбец ProductName
alter table products add CategoryId int
create table Categories (CategoryId INT Primary key, CategoryName INT UNIQUE)
IDENTITY это шаговое нумерация по заданному шагу
