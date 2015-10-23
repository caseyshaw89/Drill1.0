Use master
Go
If EXISTS (Select* From sys.sysdatabases
 where [name]= 'Library')
 Drop Database Library
 Go
Create Database Library
Go
Use Library
Go

Create table Book
(BookID Int Primary Key,
Title Varchar (60) Not null,
PublisherName Varchar (60) Not null)

Insert Into Book (BookID,Title,PublisherName)
Values (1,'The Lost Tribe','Reading Rainbow'),
(2,'Ready for war (The War Against Poor Food Choices)','Eatwell Books'),
(3,'How to Ride a Mountian Bike','MTBR'),
(4,'The Art of Hunting Mushrooms','Eatwell Books'),
(5,'Ready for Winter','Artic Books'),
(6,'Running Free','Runners Roost'),
(7,'Fashion 2016','Conor Books and MMA'),
(8,'Art of MMA','Conor Books and MMA'),
(9,'Good Eats','Alton Brown Books'),
(10,'Ten Best Cars','Jeremy Clarkson Books'),
(11,'The Legend of Steve Jobs','Wondering Books'),
(12,'A Guide to New Mexico','Forever Lost Books'),
(13,'The Next Great Car show','Jeremy Clarkson Books'),
(14,'Once In a Lifetime','Magical Books'),
(15,'Beat the Heat','Artic Books'),
(16,'Food Greats','Alton Brown Books'),
(17,'Hair Styles for Men','Conor Books and MMA'),
(18,'Wonders of Colorado','Palmers Books'),
(19,'A Guide to Video Games','Bethsoft Books'),
(20,'Walking up Incline', 'Palmers Books')


create table Book_Authors
(BookID Int not null,
Author Varchar(30) not null,
Constraint fk_author Foreign Key(BookID)
References Book(BookID))
Insert Into Book_Authors (BookID,Author)
Values (1,'Reggie Mac'),
(2,'Derek Car'),
(3,'Patrick Cummings'),
(4,'Patty Smith'),
(5,'James Maynot'),
(6,'Red Jay'),
(7,'Conor Mcgregor'),
(8,'Conor Mcgregor'),
(9,'Alton Brown'),
(10,'Jeremy Clarkson'),
(11,'James Wisherd'),
(12,'William Bonney'),
(13,'Jeremy Clarkson'),
(14,'Peter Farley'),
(15,'James Maynot'),
(16,'Alton Brown'),
(17,'Conor Mcgregor'),
(18,'William Palmer'),
(19,'Stephen King'),
(20,'William Palmer')




Create Table Publisher
(Name  varchar(30)not null,
[Address] varchar (50) null,
PhoneNumber char(10)not null)


Insert Into Publisher (Name,[Address],PhoneNumber)
Values
('Reading Rainbow','123 Webber St',5554336000),
('Eatwell Books','2455 Academy Ave',5556516790),
('MTBR','54345 Chance DR',5556781254),
('Artic Books','456 Frozen DR',5559878579),
('Runners Roost','854 Red St',5554506356),
('Conor Books and MMA','8675 Richmond Ave',5553565634),
('Alton Brown Books','532 Gradiant Dr',5553238090),
('Jeremy Clarkson Books','5555 Red Valley Dr',5551264976),
('Wondering Books','6589 Wonder Dr',5555129145),
('Forever Lost Books','145 White Sands Blvd', 5554204211),
('Magical Books','1503 Neverland ave',5555555555),
('Palmer Books','5678 N. Academy',5556509758),
('Bethsoft Books','87654 West Lane',5553404230)

Create Table Library_Branch
(BranchID INT Primary Key,
BranchName Varchar(30) not null,
[Address] Varchar(30) null)
Select* From Library_Branch
Insert Into Library_Branch (BranchID,BranchName,[Address])
Values (1,'Sharpstown','1456 Gregory ST'),
(2,'Central','6748 Ruckaford DR'),
(3,'Jerry''s Library','487 Jerry''s DR'),
(4,'Stephen Kings Library','504 Scream ST')

Create Table Book_Copies
(BookID Int not null,
BranchID int not null,
No_of_Copies int not null,
Constraint fk_LibraryBranch Foreign Key(BranchID) 
References Library_Branch(BranchID),
Constraint fk_Book Foreign Key(BookID)
References Book(BookID))
Insert Into Book_Copies (BookID,BranchID,No_of_Copies)
Values
(1,1,5),
(1,2,2),
(1,3,4),
(1,4,10),
(2,1,4),
(2,2,4),
(2,3,8),
(2,4,6),
(3,1,8),
(3,2,4),
(3,3,5),
(3,4,2),
(4,1,4),
(4,2,2),
(4,3,4),
(4,4,2),
(5,1,3),
(5,2,7),
(5,3,3),
(5,4,6),
(6,1,5),
(6,2,3),
(6,3,12),
(6,4,4),
(7,1,3),
(7,2,2),
(7,3,6),
(7,4,3),
(8,1,4),
(8,2,2),
(8,3,3),
(8,4,5),
(9,1,2),
(9,2,3),
(9,3,6),
(9,4,8),
(10,1,3),
(10,2,4),
(10,3,5),
(10,4,2),
(11,1,10),
(11,2,2),
(11,3,6),
(11,4,7),
(12,1,2),
(12,2,4),
(12,3,6),
(12,4,4),
(13,1,3),
(13,2,6),
(13,3,3),
(13,4,2),
(14,1,3),
(14,2,7),
(14,3,4),
(14,4,5),
(15,1,2),
(15,2,3),
(15,3,2),
(15,4,5),
(16,1,2),
(16,2,4),
(16,3,2),
(16,4,7),
(17,1,3),
(17,2,4),
(17,3,3),
(17,4,2),
(18,1,3),
(18,2,4),
(18,3,2),
(18,4,7),
(19,1,4),
(19,2,10),
(19,3,2),
(19,4,4),
(20,1,4),
(20,2,10),
(20,3,3),
(20,4,2)



Create Table Borrower
(CardNo Int Primary Key,
Name Varchar(30) not null,
[Address] Varchar(30) not null,
Phone Varchar (30) not null)

Insert Into Borrower (CardNo,Name,[Address],Phone)
Values (1,'Brandon Cooks','654 Superfast DR',5559433678),
(2,'Danny Woodhead','58200 Relitive Lane',5556741234),
(3,'Andy Dalton','538 Texas Ave',5553872543),
(4,'Twaine Jone','1740 Calculated DR',5553459284),
(5,'Page VanZant','4378 Rockstar Valley Lane',5557236755),
(6,'Michelle Waterson','225 Omaha Lane',5553456967),
(7,'David Greer','457 Ellicott Hwy',5553498156),
(8,'Adam Ranchero','679 Log RD',5556838845)

Create Table Book_Loans
(BookID int not null,
BranchID int not null,
CardNo int not null,
DateOut Date null,
DueDate Date  null,
Constraint fk_Book2 Foreign Key(BookID)
References Book(BookID),
Constraint fk_LibraryBranch2 Foreign Key(BranchID)
References Library_Branch(BranchID),
Constraint fk_Borrower1 Foreign Key(CardNO)
References Borrower(CardNO))

Insert Into Book_Loans (BookID,BranchID,CardNO,DateOut,DueDate)
Values (1,1,1,'2015-10-19','2015-10-25'),
(5,1,1,'2015-10-19','2015-10-25'),
(10,1,1,'2015-10-16','2015-10-22'),
(12,1,1,'2015-10-19','2015-10-25'),
(13,1,1,'2015-10-16','2015-10-22'),
(3,4,2,'2015-09-20','2015-09-26'),
(6,4,3,'2015-10-01','2015-10-07'),
(7,4,3,'2015-10-07','2015-10-13'),
(7,2,4,'2015-10-17','2015-10-22'),
(8,2,5,'2015-10-19','2015-10-25'),
(17,2,5,'2015-10-03','2015-10-09'),
(16,2,5,'2015-10-09','2015-10-15'),
(13,2,5,'2015-05-18','2015-05-24'),
(11,2,5,'2015-10-14','2015-10-20'),
(2,3,6,'2015-10-16','2015-10-22'),
(4,3,7,'2015-10-14','2015-10-20'),
(14,3,7,'2015-10-10','2015-10-16'),
(15,4,8,'2015-10-06','2015-10-12'),
(3,4,8,'2015-10-06','2015-10-12'),
(19,4,8,'2015-09-19','2015-09-25'),
(20,4,8,'2015-10-01','2015-10-07'),
(6,1,1,'2015-10-19','2015-10-25'),
(4,2,5,'2015-10-19','2015-10-25'),
(7,2,5,'2015-10-19','2015-10-25'),
(5,3,6,'2015-10-19','2015-10-25'),
(20,3,6,'2015-10-19','2015-10-25'),
(13,3,6,'2015-10-19','2015-10-25'),
(11,3,6,'2015-10-19','2015-10-25'),
(6,1,4,'2015-10-19','2015-10-25'),
(8,1,4,'2015-10-19','2015-10-25'),
(1,3,4,'2015-10-19','2015-10-25'),
(2,3,4,'2015-10-19','2015-10-25'),
(6,3,4,'2015-10-19','2015-10-25'),
(15,2,7,'2015-10-19','2015-10-25'),
(12,2,7,'2015-10-19','2015-10-25'),
(1,2,7,'2015-10-19','2015-10-25'),
(13,2,7,'2015-10-19','2015-10-25'),
(19,2,7,'2015-10-19','2015-10-25'),
(20,3,3,'2015-10-11','2015-10-17'),
(13,3,3,'2015-10-11','2015-10-17'),
(15,3,3,'2015-09-09','2015-09-15'),
(18,3,3,'2015-08-19','2015-08-25'),
(17,4,6,'2015-10-09','2015-10-15'),
(3,4,6,'2015-10-19','2015-10-25'),
(5,4,6,'2015-10-17','2015-10-23'),
(8,4,6,'2015-10-11','2015-10-17'),
(10,2,1,'2015-08-01','2015-08-07'),
(1,2,5,'2015-10-16','2015-10-22'),
(4,3,5,'2015-01-19','2015-01-25'),
(9,3,5,'2015-06-11','2015-06-17')

