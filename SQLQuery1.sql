CREATE Database Blog

USE Blog

CREaTE TABLE Users (
 ID int primary key IDENTITY(1,1),
LastName nvarchar(255)NOT NULL,
[Name] nvarchar(255)NOT NULL,
Email nvarchar(100) CHECK(LEN (Email) Between 4 and 100 )NOT NULL UNIQUE,
);



CREATE TABLE Posts(
 ID int primary key IDENTITY(1,1),
 Title nvarchar(255),
 LikeCount int,
 CreateDateat DATE NOT NULL, 
 UserId INT REFERENCES Users(ID)
 );

 INSERT INTO Users
 VALUES 
 ('Merdanov','Melik','Melik@gmail.com'),
 ('Qeribov','Aslan','Aslan@gmail.com'),
 ('Xudiyev','Xudu','Elshad@gmail.com'),
 ('Ahadov','Emil','Emil@gmail.com'),
 ('Cafarov','Ferid','Cafarov@gmail.com')
 INSERT INTO Posts
 VALUES
 ('Title',1,'2023- 05 -20'),
  ('Title',2,'2023- 05 -20'),
  ('Title',3,'2023- 05 -20'),
  ('Title',4,'2023- 05 -20'),
  ('Title',5,'2023- 05 -20') 
  SELECT*FROM Users
  INNER JOIN *ON Posts.UserId=Users.ID


 