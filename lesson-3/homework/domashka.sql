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
bulk insert products from 'C:\Users\sh.zaminulla\Documents\lesson 3\student_data.txt' with(FIELDTERMINATOR=',', ROWTERMINATOR='\n', FIRSTROW=1)
create table tovari (TovariID int) alter table tovari add constraint TovariId_kluch foreign key (TovariId) References Categories(CategoryId)
Первичный ключ это уникальность сроки, а уникальный ключ это уникальность значенний
alter table products add constraint Price check (price>0)
alter table products add ZAPAS int NOT NULL default 0
select price, isnull(price, 0) as price from products
FOREIGN KEY подключается только одному внешнему ключу
create table clients (clientsid int primary key, clients_name varchar(50) not null, age int not null, constraint chk_age check (age>=18))
create table indetity_1 (id int identity(100,10))
CREATE TABLE OrderDetails (OrderID INT NOT NULL, ProductID INT NOT NULL, Quantity INT NOT NULL, Price DECIMAL(10, 2) NOT NULL, CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderID, ProductID))
ISNULL — для простой подстановки одного значения (NULL → что-то) COALESCE — когда есть несколько возможных источников данных и нужно выбрать первое не-NULL значение
create table sotrudniki(empID int primarykey, email int unique)
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE
