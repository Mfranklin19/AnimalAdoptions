

USE [master]
GO

IF EXISTS(SELECT NULL FROM sys.databases WHERE name = 'AnimalAdoption')
DROP DATABASE AnimalAdoption

/****** Object:  Database [AnimalAdoption]    Script Date: 5/8/2017 5:09:24 PM ******/
CREATE DATABASE [AnimalAdoption]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AnimalAdoption', FILENAME = N'D:\RDSDBDATA\DATA\AnimalAdoption.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'AnimalAdoption_log', FILENAME = N'D:\RDSDBDATA\DATA\AnimalAdoption_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AnimalAdoption] SET COMPATIBILITY_LEVEL = 130
GO
USE [AnimalAdoption]
GO
/****** Object:  Table  [AdoptionCenter]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE  AdoptionCenter(
	[CenterID] [int] IDENTITY(13,1) NOT NULL,
	[CenterName] [varchar](50) NULL,
	[CenterAddress] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CenterID] ASC
) 
) ON [PRIMARY]

insert into AdoptionCenter (CenterName, CenterAddress) values ('Bruen and Sons', '5058 Merchant Lane');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Dibbert, Pfannerstill and Runte', '318 Starling Terrace');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Watsica, Watsica and Roberts', '111 Waubesa Center');
insert into AdoptionCenter (CenterName, CenterAddress) values ('McCullough, Rempel and Kautzer', '34777 Northview Way');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Satterfield, Cremin and Weissnat', '56311 Waubesa Trail');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Reichert LLC', '9 Commercial Park');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Huel-Grady', '8699 Anthes Center');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Watsica-Reynolds', '450 School Alley');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Ledner-Nicolas', '55688 Basil Way');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Farrell, Mann and Jenkins', '22 Jana Center');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Rogahn-Aufderhar', '7740 Clemons Trail');
insert into AdoptionCenter (CenterName, CenterAddress) values ('Towne Inc', '3 Everett Center');

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE  Species(
	[SpeciesID] [int] IDENTITY(1,1) NOT NULL,
	[SpeciesName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeciesID] ASC
) 
) ON [PRIMARY]

insert into Species (SpeciesName) values ('Dog');
insert into Species (SpeciesName) values ('Cat');
insert into Species (SpeciesName) values ('Reptile');
insert into Species (SpeciesName) values ('Bird');
insert into Species (SpeciesName) values ('Fish');
insert into Species (SpeciesName) values ('Rodent');

GO



/****** Object:  Table  [Animals]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE  Animals(
	[AnimalID] [int] IDENTITY(101,1) NOT NULL,
	[CenterID] [int] NULL,
	[SpeciesID] [int] NULL,
	[AnimalName] [varchar](50) NULL,
	[AnimalAge] [int] NULL,
	[AnimalSex] [varchar](50) NULL,
	[Description] [text] NULL,
	[DateArrived] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnimalID] ASC
) 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]



insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (7, 2, 'Brandy', 22, 1, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', '8/23/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (4, 4, 'Rena', 8, 1, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', '11/3/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (8, 2, 'Bianka', 49, 1, 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2/21/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (12, 5, 'Jerry', 61, 0, 'Etiam faucibus cursus urna. Ut tellus.', '2/2/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (8, 2, 'Trixi', 63, 1, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', '12/31/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (4, 1, 'Anabel', 76, 1, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '1/12/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (8, 4, 'Caresa', 84, 0, 'In hac habitasse platea dictumst.', '5/29/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (8, 3, 'Rickie', 59, 1, 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '1/5/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values (4, 5, 'Joli', 39, 1, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '1/17/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 2, 'Hatty', 95, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '9/17/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 3, 'Reuven', 26, 1, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', '1/31/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 6, 'Joela', 80, 1, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', '5/29/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 3, 'Jakie', 40, 0, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', '8/31/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 7, 1, 'Lucio', 63, 0, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '6/8/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 1, 'Aleece', 84, 0, 'Aenean fermentum.', '12/9/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 6, 'Katharyn', 97, 1, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '4/30/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 5, 'Anatole', 33, 0, 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '4/12/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 1, 'Mallory', 96, 0, 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '6/2/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 5, 'Kendal', 96, 0, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', '8/12/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 4, 'Joela', 40, 1, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '10/26/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 7, 3, 'Lindsay', 56, 1, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', '4/1/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 11, 3, 'Misti', 2, 0, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '1/26/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 11, 3, 'Robin', 19, 0, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '7/6/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 1, 'Grethel', 60, 1, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '9/9/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 5, 'Lonnie', 14, 1, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '3/13/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 8, 4, 'Hermy', 22, 0, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', '10/26/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 1, 6, 'Morgan', 23, 0, 'Suspendisse accumsan tortor quis turpis.', '7/31/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 4, 'Babara', 50, 0, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '7/27/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 7, 6, 'Ramsey', 50, 0, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '11/21/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 4, 'Ulrika', 80, 1, 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '3/16/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 1, 'Armand', 46, 0, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '12/20/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 8, 6, 'Leia', 65, 0, 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '5/15/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 6, 'Eugene', 97, 0, 'Cras pellentesque volutpat dui.', '7/8/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 3, 'Bridget', 97, 0, 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', '2/8/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 1, 4, 'Elijah', 73, 1, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '5/3/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 3, 4, 'Berti', 40, 1, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2/22/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 8, 3, 'Ignaz', 24, 1, 'Maecenas tincidunt lacus at velit.', '3/6/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 3, 6, 'Hughie', 33, 0, 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '1/16/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 7, 6, 'Layla', 99, 0, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', '6/25/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 4, 'Algernon', 36, 1, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', '10/25/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 6, 'Agosto', 49, 1, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', '8/31/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 5, 'Monti', 47, 1, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '12/30/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 5, 'Mavis', 37, 1, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', '3/23/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 10, 6, 'Jabez', 36, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '5/29/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 8, 5, 'Emlen', 83, 1, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '1/14/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 3, 'Monique', 72, 0, 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '9/14/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 1, 'Gussi', 91, 0, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '3/21/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 6, 'Lauralee', 95, 1, 'In quis justo.', '10/8/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 3, 'Walliw', 78, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', '4/1/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 10, 4, 'Fara', 91, 0, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '6/4/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 1, 'Rikki', 89, 1, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '4/6/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 1, 5, 'Giustino', 8, 1, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', '10/23/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 3, 'Brunhilda', 1, 1, 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '11/11/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 8, 1, 'Cherilyn', 15, 0, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', '5/14/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 7, 1, 'Jobie', 82, 1, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', '1/25/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 2, 'Guglielmo', 52, 1, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', '5/12/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 4, 'Debby', 91, 0, 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '5/13/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 1, 6, 'Stesha', 49, 1, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '3/6/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 1, 'Olvan', 1, 1, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', '3/17/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 8, 2, 'Linea', 60, 1, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', '11/11/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 10, 4, 'Rhianon', 83, 0, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', '6/16/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 1, 'Janetta', 41, 0, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', '5/12/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 10, 2, 'Cecelia', 72, 1, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', '10/26/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 6, 'Clifford', 95, 1, 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', '4/12/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 6, 'Noellyn', 25, 1, 'Duis mattis egestas metus.', '4/16/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 1, 'Zonda', 28, 0, 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '12/31/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 6, 'Free', 51, 0, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '8/11/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 5, 'Antin', 84, 0, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', '1/25/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 5, 'Kippy', 60, 1, 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', '1/11/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 1, 'Julita', 1, 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '1/16/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 3, 'Sergio', 54, 0, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', '1/13/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 3, 'Kareem', 42, 0, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', '7/17/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 3, 'Delaney', 86, 1, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '7/19/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 3, 2, 'Tiffani', 35, 0, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', '1/22/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 11, 3, 'Lucien', 42, 1, 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.', '4/17/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 3, 'Adey', 78, 0, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', '10/19/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 10, 6, 'Timmy', 35, 1, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '6/17/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 4, 'Erin', 51, 1, 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', '1/24/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 7, 3, 'Abbe', 8, 0, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '10/11/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 1, 'Ody', 81, 0, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '12/7/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 2, 'Byron', 77, 1, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '3/2/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 1, 'Ottilie', 54, 0, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '4/17/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 6, 'Brandyn', 53, 0, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '9/26/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 5, 'Shanda', 12, 1, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '7/20/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 3, 2, 'Glennis', 25, 1, 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2/2/2016');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 5, 'Perice', 27, 1, 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '9/18/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 4, 'Ianthe', 44, 0, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '5/6/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 2, 'Dael', 56, 1, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '10/26/2013');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 10, 3, 'Matthaeus', 3, 1, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '9/9/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 6, 6, 'Carline', 21, 0, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', '2/8/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 1, 'Kyle', 49, 0, 'Sed ante.', '4/7/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 2, 'Garret', 51, 1, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '9/16/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 5, 'Bram', 97, 0, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '3/3/2015');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 12, 3, 'Ettie', 62, 1, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '9/24/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 9, 5, 'Hal', 90, 1, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '5/29/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 5, 2, 'Cosme', 24, 0, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', '7/26/2011');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 2, 6, 'Abra', 76, 0, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '7/19/2012');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 10, 4, 'Everard', 90, 0, 'Donec dapibus. Duis at velit eu est congue elementum.', '10/6/2010');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 4, 2, 'Darill', 82, 1, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', '2/18/2014');
insert into Animals ( CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, Description, DateArrived) values ( 7, 3, 'Davidde', 82, 1, 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', '2/17/2013');




GO
/****** Object:  Table  [Customers]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE  Customers(
	[CustomerID] [int] IDENTITY(71,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerAddress] [varchar](50) NULL,
	[CustomerEmail] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)
) ON [PRIMARY]

insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Dulcia Cordie', '3 Monica Point', 'dcordie0@amazonaws.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Brenna Sherrum', '9736 Surrey Parkway', 'bsherrum1@clickbank.net');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Noam Carnell', '351 Judy Place', 'ncarnell2@nydailynews.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Kessiah Clemerson', '70 Loeprich Way', 'kclemerson3@va.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Sandi Whetton', '203 Holy Cross Avenue', 'swhetton4@google.pl');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Levon Willmont', '09 Nancy Crossing', 'lwillmont5@noaa.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Adorne Dadge', '51290 Nancy Crossing', 'adadge6@wired.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Rora Birkbeck', '812 Mockingbird Trail', 'rbirkbeck7@scientificamerican.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ('Olive Gonnet', '07171 Eagan Parkway', 'ogonnet8@yellowpages.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Adolphus Luney', '0 Schlimgen Road', 'aluney9@free.fr');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Annecorinne McDougle', '7910 Corry Drive', 'amcdouglea@quantcast.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Allison Spyvye', '254 Summerview Crossing', 'aspyvyeb@cafepress.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Adriana Shopcott', '94 Blue Bill Park Parkway', 'ashopcottc@cbslocal.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Rosalia Kornacki', '4465 Algoma Plaza', 'rkornackid@issuu.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Cinnamon Frantzeni', '073 Kensington Avenue', 'cfrantzenie@soundcloud.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Neddie Frushard', '95 Gina Way', 'nfrushardf@opensource.org');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Domingo Tweddell', '251 Grayhawk Plaza', 'dtweddellg@w3.org');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Terrijo Lamonby', '5 Maple Center', 'tlamonbyh@chronoengine.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Andres Clorley', '1 Arkansas Terrace', 'aclorleyi@hugedomains.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Karla Ivanitsa', '0 Meadow Ridge Hill', 'kivanitsaj@dedecms.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Johnna Claw', '6 Old Shore Point', 'jclawk@home.pl');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Marlo Hukins', '831 Westend Terrace', 'mhukinsl@oaic.gov.au');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Genovera Sawdy', '3826 Bultman Alley', 'gsawdym@noaa.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Loraine Workman', '882 Cherokee Lane', 'lworkmann@mayoclinic.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Georgianne Arnald', '103 Mitchell Avenue', 'garnaldo@cdc.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Alfons Gravenell', '67 Portage Way', 'agravenellp@behance.net');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Nickie Gundry', '4 Nancy Court', 'ngundryq@cnbc.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Sara Ginn', '81 Florence Plaza', 'sginnr@booking.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Marten Mayne', '31 Summer Ridge Plaza', 'mmaynes@naver.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Rafaellle Iowarch', '989 Comanche Alley', 'riowarcht@macromedia.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Cherye Thecham', '21 Claremont Place', 'cthechamu@indiatimes.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Horatia Humfrey', '59 Corscot Terrace', 'hhumfreyv@freewebs.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Lizzy Dicker', '175 Blue Bill Park Plaza', 'ldickerw@ehow.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Humphrey Alliston', '6661 Rieder Drive', 'hallistonx@blogtalkradio.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Alano Parradine', '191 Pennsylvania Way', 'aparradiney@mit.edu');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Natalie Huniwall', '65 Lindbergh Road', 'nhuniwallz@wufoo.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Tommi Byatt', '356 Eastwood Avenue', 'tbyatt10@vimeo.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Anny MacGill', '6739 Forest Run Parkway', 'amacgill11@mediafire.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Corinne Lenin', '29452 Hoffman Place', 'clenin12@timesonline.co.uk');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Moe Douty', '878 Dwight Terrace', 'mdouty13@youku.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Christoph Illwell', '60 Doe Crossing Street', 'cillwell14@home.pl');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Kristo Spilsburie', '919 Walton Center', 'kspilsburie15@facebook.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Giovanna Maseres,', '52341 Bultman Point', 'gmaseres16@utexas.edu');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Carroll Peacey', '65 Clarendon Drive', 'cpeacey17@jugem.jp');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Ina Oglesbee', '123 Lighthouse Bay Plaza', 'ioglesbee18@shop-pro.jp');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Matilda Trevon', '0 Montana Circle', 'mtrevon19@ftc.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Webb Forbear', '2 Johnson Point', 'wforbear1a@github.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Marsiella Clark', '663 Shasta Court', 'mclark1b@createvista.org');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Bertrand Braunlein', '102 Forest Run Terrace', 'bbraunlein1c@weebly.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Orland Feares', '708 Carberry Way', 'ofeares1d@youtu.be');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Olwen Luckin', '87 Messerschmidt Alley', 'oluckin1e@yahoo.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Conney McIleen', '9 Tennessee Alley', 'cmcileen1f@si.edu');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Kelila Darrington', '79051 Dayton Circle', 'kdarrington1g@prlog.org');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Frazier McKew', '8 Bluestem Road', 'fmckew1h@oaic.gov.au');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Talyah Osgordby', '2 Shasta Park', 'tosgordby1i@nydailynews.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Hi Macveigh', '916 Lakeland Hill', 'hmacveigh1j@angelfire.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Gianna Troutbeck', '3 Eastwood Point', 'gtroutbeck1k@europa.eu');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Gail Tapply', '799 Troy Terrace', 'gtapply1l@house.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Clem Nevinson', '8 Eliot Hill', 'cnevinson1m@youku.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Flinn Baskeyfield', '78192 Amoth Court', 'fbaskeyfield1n@woothemes.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Carie Kumaar', '963 Di Loreto Road', 'ckumaar1o@weebly.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Stafford Greeves', '8 8th Avenue', 'sgreeves1p@wufoo.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Richmound Muselli', '373 Sunfield Crossing', 'rmuselli1q@yellowbook.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Lesly Checketts', '37 Grover Park', 'lchecketts1r@domainmarket.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Felisha Clemett', '70438 Kim Plaza', 'fclemett1s@miibeian.gov.cn');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Allison Giovanni', '9841 Dottie Road', 'agiovanni1t@yellowpages.com');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Roxanna Kiernan', '660 Village Hill', 'rkiernan1u@ftc.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Gaultiero Steinham', '1457 Esker Lane', 'gsteinham1v@house.gov');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Maribeth Roselli', '73 Loftsgordon Parkway', 'mroselli1w@simplemachines.org');
insert into Customers (CustomerName, CustomerAddress, CustomerEmail) values ( 'Ernaline Weddup', '6850 Lake View Trail', 'eweddup1x@ca.gov');



GO
/****** Object:  Table  [Employees]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE  Employees(
	[EmployeeID] [int] IDENTITY(41,1) NOT NULL,
	[EmployeeName] [varchar](50) NULL,
	[EmployeePhone] [varchar](50) NULL,
	[EmployeeSalary] [decimal](20, 2) NULL,
	[CenterID] [int] NULL,
	[Administrator] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
) 
) ON [PRIMARY]

insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Rafe Assard', '62-(215)579-2083', 11.68, 11, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Lisette Wayte', '420-(179)813-4887', 12.19, 3, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Justine Paulus', '1-(347)807-3404', 12.1, 9, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Carlo Keme', '55-(861)860-1134', 11.14, 1, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Audra Kirman', '53-(847)801-9318', 12.35, 7, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Sherwynd Pook', '66-(692)504-8011', 11.28, 10, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Kelcy Chadwin', '62-(548)449-6509', 8.47, 5, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Isaiah Brigstock', '84-(981)279-7356', 12.02, 1, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ('Bald Cammock', '30-(137)563-2026', 11.57, 11, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Maximilianus O''Hartnedy', '62-(199)459-8978', 13.31, 12, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Fawn Judkins', '7-(203)223-3581', 10.02, 9, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Dominique Goulborn', '86-(379)750-5300', 12.51, 6, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Halli Maddox', '62-(283)215-3595', 10.17, 10, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Adaline Gerding', '34-(921)670-3720', 12.67, 6, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Jillana Brenneke', '51-(160)754-4710', 11.28, 1, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Hilde Bogey', '63-(358)164-8620', 8.02, 1, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Graeme Ganniclifft', '48-(538)667-5021', 11.45, 3, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Yorke Addis', '385-(635)856-8474', 11.61, 11, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Isabeau Sedwick', '351-(830)606-5754', 11.36, 10, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Chilton Goodlad', '86-(814)614-8108', 14.4, 5, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Perla Scamp', '86-(661)958-1352', 11.08, 6, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Tris Rowston', '1-(808)491-0071', 10.77, 2, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Virgie Helwig', '7-(357)529-5250', 14.55, 9, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Lillian Catmull', '7-(738)934-5854', 12.1, 10, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Nariko Toffaloni', '86-(985)991-1801', 12.81, 12, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Molli Mussalli', '62-(481)355-6243', 14.37, 3, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Ignacius Bielfeldt', '506-(821)347-3400', 13.77, 6, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Mylo Jehu', '30-(328)486-1369', 9.59, 7, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Zora Pottle', '86-(350)192-0025', 14.17, 11, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Bartie Peoples', '86-(576)323-3510', 8.97, 8, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Thom Sink', '86-(258)695-7313', 8.52, 3, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Kelby Burke', '81-(914)512-5504', 10.42, 6, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Cindi Routh', '7-(546)556-3804', 8.2, 1, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Ardenia Jordin', '62-(181)744-8145', 8.08, 10, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Renault Wilbor', '387-(116)572-9363', 8.94, 1, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Dirk Nadin', '63-(755)156-1117', 9.1, 12, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Swen Kibbey', '86-(971)778-2991', 9.59, 9, 1);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Melly Stebbings', '44-(743)209-0016', 12.7, 7, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Aeriela Bownes', '86-(228)886-2019', 14.95, 7, 0);
insert into Employees (EmployeeName, EmployeePhone, EmployeeSalary, CenterID, Administrator) values ( 'Robby Sibborn', '353-(586)668-9786', 9.96, 4, 1);

GO

/****** Object:  Table  [Adoptions]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE  Adoptions(
	[AdoptionID] [int] IDENTITY(20,1) NOT NULL,
	[AnimalID] [int] NULL,
	[CustomerID] [int] NULL,
	[AdoptionCost] [decimal](6, 2) NULL,
	[AdoptionDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdoptionID] ASC
) 
) ON [PRIMARY]



insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (50, 32, 240.22, '9/7/2014');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (46, 16, 639.54, '9/28/2015');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (2, 26, 986.66, '3/22/2015');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (21, 69, 383.42, '10/10/2013');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (38, 43, 796.65, '3/23/2016');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (15, 6, 306.87, '6/14/2015');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (90, 24, 702.11, '4/26/2014');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (87, 70, 384.51, '3/26/2014');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values (10, 12, 778.63, '10/18/2015');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 91, 52, 53.29, '4/20/2017');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 4, 30, 727.97, '4/22/2014');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 10, 16, 118.51, '7/25/2013');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 98, 17, 65.05, '7/28/2015');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 34, 24, 904.61, '12/11/2016');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 53, 21, 412.67, '7/13/2016');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 11, 68, 933.33, '3/30/2017');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 98, 23, 23.04, '12/19/2016');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 11, 67, 406.94, '5/17/2015');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 69, 68, 276.72, '4/7/2015');
insert into Adoptions (AnimalID, CustomerID, AdoptionCost, AdoptionDate) values ( 01, 44, 558.8, '7/25/2016');

GO



/****** Object:  StoredProcedure  [spAddAdoptionCenter]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spAddAdoptionCenter]
	@CenterName varchar(50),
	@CenterAddress varchar(50)
AS
	SET NOCOUNT ON
BEGIN
	IF NOT EXISTS(SELECT NULL FROM AdoptionCenter
					WHERE	CenterName = @CenterName OR
							CenterAddress = @CenterAddress) BEGIN
					INSERT INTO AdoptionCenter(CenterName, CenterAddress)
					VALUES(@CenterName, @CenterAddress)

					END
	SELECT * FROM AdoptionCenter WHERE CenterName = @CenterName
	

END

GO



/****** Object:  StoredProcedure  [spAddAdoptions]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spAddAdoptions]
	@AnimalID		int,
	@CustomerID		int,
	@AdoptionCost	money,
	@AdoptionDate	date
AS
	SET NOCOUNT ON
BEGIN
	INSERT INTO Adoptions(AnimalID, CustomerID, AdoptionCost, AdoptionDate)
	VALUES(@AnimalID, @CustomerID, @AdoptionCost, @AdoptionDate)

	SELECT * FROM Adoptions WHERE AnimalID = @AnimalID
	

END


GO
/****** Object:  StoredProcedure  [spAddAnimals]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spAddAnimals]
	
	@CenterID		INT,
	@SpeciesID		INT,
	@AnimalName		VARCHAR(50),
	@AnimalAge		INT,
	@AnimalSex		VARCHAR(50),
	@Description	TEXT,
	@DateArrived	date
	
AS 
SET NOCOUNT ON
IF EXISTS (SELECT NULL FROM Animals WHERE AnimalName = @AnimalName AND DateArrived = @DateArrived)
	BEGIN
		SELECT * FROM dbo.Animals
	END
ELSE
	BEGIN
		INSERT INTO Animals(CenterID,SpeciesID,AnimalName,	AnimalAge,AnimalSex, 
							[Description], DateArrived)
		VALUES( @CenterID, @SpeciesID,@AnimalName,	@AnimalAge,@AnimalSex, 
						@Description, @DateArrived)
		SELECT AnimalID = @@IDENTITY
	END


GO
/****** Object:  StoredProcedure  [spAddCustomer]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [spAddCustomer]
	@CustomerName	   varchar(50),
	@CustomerAddress	varchar(50),
	@CustomerEmail	  varchar(50)
AS
SET NOCOUNT ON
IF EXISTS (SELECT NULL FROM Customers WHERE CustomerName = @CustomerName AND (CustomerAddress = @CustomerAddress OR CustomerEmail = @CustomerEmail))
	BEGIN
		SELECT CustomerID = 0
	END
ELSE
	BEGIN
		INSERT INTO Customers(CustomerName, CustomerAddress, CustomerEmail)
		VALUES(@CustomerName, @CustomerAddress, @CustomerEmail)
		SELECT CustomerID = @@IDENTITY
	END


GO
/****** Object:  StoredProcedure  [spAddEmployee]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spAddEmployee]
	@CenterID		int,
	@EmployeeName	varchar(50),
	@EmployeePhone   varchar(10),
	@EmployeeSalary  money,
	@Administrator   bit = 0
AS
SET NOCOUNT ON
IF EXISTS (SELECT NULL FROM Employees WHERE EmployeeName = @EmployeeName OR EmployeePhone = @EmployeePhone)
	BEGIN
		SELECT [Success] = -1
	END
ELSE
	BEGIN
		INSERT INTO Employees(CenterID, EmployeeName, EmployeePhone, EmployeeSalary, Administrator)
		VALUES(@CenterID, @EmployeeName, @EmployeePhone, @EmployeeSalary, @Administrator)
		SELECT EmployeeID = @@IDENTITY
	END
GO
/****** Object:  StoredProcedure  [spDeleteAdoptionCenter]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spDeleteAdoptionCenter]
	@CenterID int
AS
	SET NOCOUNT ON
BEGIN
	IF NOT	(
				EXISTS(SELECT NULL FROM Employees WHERE CenterID = @CenterID) OR
				EXISTS(SELECT NULL FROM Animals WHERE CenterID = @CenterID)
			) BEGIN
			DELETE FROM AdoptionCenter WHERE CenterID = @CenterID
			END

END



GO
/****** Object:  StoredProcedure  [spDeleteAdoptions]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spDeleteAdoptions]
	@AdoptionID int
AS
	SET NOCOUNT ON
BEGIN

	DELETE FROM Adoptions WHERE AdoptionID = @AdoptionID

END



GO
/****** Object:  StoredProcedure  [spDeleteAnimal]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spDeleteAnimal]
	@AnimalID  int
AS
SET NOCOUNT ON
IF EXISTS ( SELECT * FROM Adoptions WHERE AnimalID = @AnimalID)
BEGIN 
	DELETE FROM Adoptions 
	WHERE AnimalID = @AnimalID 
	DELETE FROM Animals
	WHERE AnimalID = @AnimalID
	

END ELSE BEGIN 
	DELETE FROM Animals
	WHERE AnimalID = @AnimalID
END
GO
/****** Object:  StoredProcedure  [spDeleteCustomer]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spDeleteCustomer]
	@CustomerID	 int
AS
SET NOCOUNT ON
IF EXISTS (SELECT NULL FROM Adoptions WHERE CustomerID = @CustomerID)
	BEGIN
		SELECT CustomerID = 0
	END
ELSE
	BEGIN
		DELETE FROM Customers
		WHERE CustomerID = @CustomerID
		SELECT CustomerID = 1
	END


GO
/****** Object:  StoredProcedure  [spDeleteEmployee]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spDeleteEmployee]
	@EmployeeID  int
AS
SET NOCOUNT ON
DELETE FROM Employees
WHERE EmployeeID = @EmployeeID
SELECT EmployeeID = 1



GO
/****** Object:  StoredProcedure  [spGetAdoptionsByAnimalID]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spGetAdoptionsByAnimalID]
	@AnimalID	int
AS
SET NOCOUNT ON
SELECT DISTINCT AnimalID, AdoptionID, CustomerID, AdoptionCost, AdoptionDate
FROM Adoptions
WHERE AnimalID = @AnimalID
ORDER BY AnimalID


GO
/****** Object:  StoredProcedure  [spGetAdoptionsByDate]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spGetAdoptionsByDate] 
		@Date1	DATE,
		@Date2	DATE 
	
as
if exists(
	SELECT AdoptionID, AdoptionCenter.CenterName, Animals.AnimalName, Customers.CustomerName
	FROM Adoptions
	JOIN Animals ON Adoptions.AnimalID = Animals.AnimalID 
	JOIN Customers ON Customers.CustomerID = Adoptions.CustomerID 
	JOIN AdoptionCenter ON AdoptionCenter.CenterID = Animals.CenterID 
	WHERE AdoptionDate > @Date1 AND AdoptionDate < @Date2 
	

) 
BEGIN 
	SELECT Adoptions.AdoptionID, AdoptionCenter.CenterName, Animals.AnimalName, Customers.CustomerName
	FROM Adoptions
	JOIN Animals ON Adoptions.AnimalID = Animals.AnimalID 
	JOIN Customers ON Customers.CustomerID = Adoptions.CustomerID 
	JOIN AdoptionCenter ON AdoptionCenter.CenterID = Animals.CenterID 
	WHERE AdoptionDate > @Date1 AND AdoptionDate < @Date2 

END ELSE BEGIN 
SELECT NULL
end


GO
/****** Object:  StoredProcedure  [spGetCenterByAnimalID]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [spGetCenterByAnimalID]
	@AnimalID	int
AS 
SET NOCOUNT ON
SELECT CenterID, CenterName, CenterAddress
FROM AdoptionCenter
WHERE AdoptionCenter.CenterID IN (   SELECT CenterID
									 FROM Animals
									 WHERE 	AnimalID = @AnimalID)
ORDER BY CenterID
GO
/****** Object:  StoredProcedure  [spGetCustomerInfoByName]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spGetCustomerInfoByName]
	@CustomerName	varchar(50)
AS
SET NOCOUNT ON
SELECT DISTINCT CustomerID, CustomerName, CustomerAddress, CustomerEmail
FROM Customers
WHERE CustomerName = @CustomerName
ORDER BY CustomerID



GO
/****** Object:  StoredProcedure  [spGetEmployeeSalary]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spGetEmployeeSalary]
	@employeeName	varchar(50)
AS
BEGIN

	SELECT EmployeeName, EmployeeSalary
	FROM Employees
	WHERE EmployeeName LIKE ('%' + @employeeName + '%')
	ORDER BY EmployeeName

END



GO
/****** Object:  StoredProcedure  [spGetEmployeesByCenter]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spGetEmployeesByCenter]
	@CenterID	int
AS
SET NOCOUNT ON
SELECT DISTINCT Employees.CenterID, EmployeeID, EmployeeName, EmployeePhone
FROM AdoptionCenter
	JOIN Employees
		ON Employees.CenterID = @CenterID
ORDER BY Employees.CenterID, EmployeeID



GO
/****** Object:  StoredProcedure  [spListAdoptionsByCustomer]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spListAdoptionsByCustomer] 
		@CustomerID INT 
	
as
if exists(
	SELECT AdoptionID, Animals.AnimalName, AdoptionDate
	FROM Adoptions
	JOIN Animals ON Adoptions.AnimalID = Animals.AnimalID 
	WHERE @CustomerID = Adoptions.CustomerID AND Adoptions.AnimalID = Animals.AnimalID 
	

) 
BEGIN 
	SELECT Animals.AnimalName,  Adoptions.AdoptionID, 
				CONVERT(VARCHAR(50),Adoptions.AdoptionDate) AS [AdoptionDate]
	FROM Adoptions, Animals 
	WHERE @CustomerID = Adoptions.CustomerID AND Adoptions.AnimalID = Animals.AnimalID 

END
GO
/****** Object:  StoredProcedure  [spListUnadoptedPets]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spListUnadoptedPets]
AS 
SET NOCOUNT ON
SELECT Animals.AnimalID, CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, [Description], DateArrived
FROM Animals
WHERE  NOT EXISTS  (SELECT NULL FROM Adoptions WHERE Adoptions.AnimalID = Animals.AnimalID)
ORDER BY Animals.AnimalID
GO
/****** Object:  StoredProcedure  [spSearchAnimalsByCenterID]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spSearchAnimalsByCenterID]
	@CenterID	int
AS
SET NOCOUNT ON
SELECT AnimalID, CenterID, SpeciesID, AnimalName, AnimalAge, AnimalSex, [Description], DateArrived
FROM Animals
WHERE CenterID = @CenterID
ORDER BY CenterID


GO
/****** Object:  StoredProcedure  [spSearchAnimalsBySpeciesName]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spSearchAnimalsBySpeciesName]
	@SpeciesName	varchar(50)
AS
SET NOCOUNT ON
SELECT AnimalID, CenterID, Animals.SpeciesID, AnimalName, AnimalAge, AnimalSex, [Description], DateArrived
FROM Animals
		JOIN Species
			ON Animals.SpeciesID = Species.SpeciesID
WHERE Species.SpeciesName = @SpeciesName



GO
/****** Object:  StoredProcedure  [spUpdateAdoptionCenter]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spUpdateAdoptionCenter]
	@CenterID int,
	@CenterName varchar(50),
	@CenterAddress varchar(50)
AS
	SET NOCOUNT ON
BEGIN
	UPDATE AdoptionCenter SET	CenterName = @CenterName,
								CenterAddress = @CenterAddress
	WHERE CenterID = @CenterID

	SELECT * FROM AdoptionCenter WHERE CenterID = @CenterID

END



GO
/****** Object:  StoredProcedure  [spUpdateAdoptions]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spUpdateAdoptions]
	@AdoptionID		int,
	@AnimalID		int,
	@CustomerID		int,
	@AdoptionCost	money,
	@AdoptionDate	date
AS
	SET NOCOUNT ON
BEGIN

	UPDATE Adoptions SET		AnimalID = @AnimalID,
								CustomerID = @CustomerID,
								AdoptionCost = @AdoptionCost,
								AdoptionDate = @AdoptionDate
	WHERE AdoptionID = @AdoptionID

	SELECT * FROM Adoptions WHERE AdoptionID = @AdoptionID
	SELECT [Success] = 1
END
GO
/****** Object:  StoredProcedure  [spUpdateAnimals]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spUpdateAnimals]
	@AnimalID		INT,
	@CenterID		INT,
	@SpeciesID		INT,
	@AnimalName		VARCHAR(50),
	@AnimalAge		INT,
	@AnimalSex		VARCHAR(50),
	@Description	TEXT,
	@DateArrived	date
	
AS 
SET NOCOUNT ON

IF  NOT EXISTS(	SELECT NULL
				FROM Animals
				WHERE AnimalID = @AnimalID) OR
	EXISTS (	SELECT NULL
				FROM Animals
				WHERE AnimalName = @AnimalName)
			SELECT [Success] = -1
ELSE 
	BEGIN
		UPDATE Animals
		SET 
			
		CenterID	 =@CenterID	,
		SpeciesID	 =@SpeciesID,	
		AnimalName	 =@AnimalName,	
		AnimalAge	 =@AnimalAge,	
		AnimalSex	 =@AnimalSex,	
		[DESCRIPTION]=@Description,
		DateArrived	 =@DateArrived
		
		
		WHERE AnimalID = @AnimalID
		SELECT AnimalID = @AnimalID
	END
GO
/****** Object:  StoredProcedure  [spUpdateCustomer]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spUpdateCustomer]
	@CustomerID		  int,
	@CustomerName		varchar(50),
	@CustomerAddress	 varchar(50),
	@CustomerEmail	   varchar(50)
AS
SET NOCOUNT ON
IF NOT EXISTS (SELECT NULL FROM Customers WHERE CustomerID = @CustomerID) OR
   	EXISTS (SELECT NULL FROM Customers WHERE (CustomerName = @CustomerName AND (CustomerAddress = @CustomerAddress OR CustomerEmail = @CustomerEmail)) AND CustomerID <> @CustomerID)
	BEGIN
		SELECT CustomerID = 0
	END
ELSE
	UPDATE Customers
	SET  CustomerName	= @CustomerName,
	 	CustomerAddress = @CustomerAddress,
	 	CustomerEmail   = @CustomerEmail
	WHERE CustomerID = @CustomerID
	SELECT CustomerID = @CustomerID


GO
/****** Object:  StoredProcedure  [spUpdateEmployee]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spUpdateEmployee]
	@EmployeeID	  int,
	@CenterID		int,
	@EmployeeName	varchar(50),
	@EmployeePhone   varchar(10),
	@EmployeeSalary  money,
	@Administrator   bit
AS
SET NOCOUNT ON
IF NOT EXISTS (SELECT NULL FROM Employees WHERE EmployeeID = @EmployeeID) OR
   	EXISTS (SELECT NULL FROM Employees WHERE (EmployeeName = @EmployeeName OR EmployeePhone = @EmployeePhone) AND EmployeeID <> @EmployeeID)
	BEGIN
		SELECT EmployeeID = 0
	END
ELSE
	BEGIN
		UPDATE Employees
		SET CenterID   	= @CenterID,
			EmployeeName   = @EmployeeName,
			EmployeePhone  = @EmployeePhone,
			EmployeeSalary = @EmployeeSalary,
			Administrator  = @Administrator
		WHERE  EmployeeID  = @EmployeeID
		SELECT EmployeeID  = @EmployeeID
	END



GO
/****** Object:  StoredProcedure  [spUpdateSpecies]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [spUpdateSpecies]
	@SpeciesID	int,
	@SpeciesName	varchar(50)
AS 
SET NOCOUNT ON
IF NOT EXISTS(	SELECT NULL
				FROM Species
				WHERE SpeciesID = @SpeciesID) OR
	EXISTS (	SELECT NULL
				FROM Species
				WHERE SpeciesName = @SpeciesName)
	BEGIN
		SELECT SpeciesID = 0
	END
ELSE 
	BEGIN
		UPDATE Species
		SET SpeciesName = @SpeciesName
		WHERE SpeciesID = @SpeciesID
		SELECT SpeciesID = @SpeciesID
	END



GO
/****** Object:  StoredProcedure  [spValidateAdminPassword]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spValidateAdminPassword]
	@AdminPassword  Varchar(50),
	@AdminUsername  Varchar(50)

AS 

	IF EXISTS(	SELECT * FROM Employees 
				WHERE	@AdminPassword = Employees.EmployeeID AND 
						@AdminUsername = Employees.EmployeePhone)
							--we will change this when the table has them included 
	BEGIN 
	SELECT 'Customer Logged in Properly'
	END 
	ELSE BEGIN 
	SELECT 'Incorrect password or username, please retry'
	END


GO
/****** Object:  StoredProcedure  [spValidateCustomerPassword]    Script Date: 5/8/2017 5:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [spValidateCustomerPassword]
	@CustomerPassword  Varchar(50),
	@CustomerUsername  Varchar(50)

AS 

	IF EXISTS(	SELECT * FROM Customers 
				WHERE	@CustomerPassword = Customers.CustomerID AND 
						@CustomerUsername = Customers.CustomerEmail)
							--we will change this when the table has them included 
	BEGIN 
	SELECT 'Customer Logged in Properly'
	END 
	ELSE BEGIN 
	SELECT 'Incorrect password or username, please retry'
	END


GO
/****** Object:  DdlTrigger [rds_deny_backups_trigger]    Script Date: 5/8/2017 5:09:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ENABLE TRIGGER [rds_deny_backups_trigger] ON DATABASE
GO
USE [master]
GO
ALTER DATABASE [AnimalAdoption] SET  READ_WRITE 
GO
