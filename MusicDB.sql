CREATE DATABASE Music;
GO
USE Music
GO

--Creating tables and inserting data--

--Create Artist Table and insert data--
CREATE TABLE Artist (	
    ArtistID int NOT NULL PRIMARY KEY, 
	ArtistName VARCHAR(40) NOT NULL
)

INSERT INTO Artist VALUES (101, 'AFI')
INSERT INTO Artist VALUES (102, 'Coheed and Cambria')
INSERT INTO Artist VALUES (103, 'Wolves in the Throne Room')
INSERT INTO Artist VALUES (104, 'Deafheaven')
INSERT INTO Artist VALUES (105, 'Whiskey Bent Valley Boys')
INSERT INTO Artist VALUES (106, 'Fallout Boy')
INSERT INTO Artist VALUES (107, 'Darkthrone')
INSERT INTO Artist VALUES (108, 'Babymetal')
INSERT INTO Artist VALUES (109, 'The Pillows')
INSERT INTO Artist VALUES (110, 'Modern Baseball')
INSERT INTO Artist VALUES (111, 'My Bloody Valentine')
INSERT INTO Artist VALUES (112, 'Panopticon')
INSERT INTO Artist VALUES (113, 'Thursday')
INSERT INTO Artist VALUES (114, 'Camp Cope')
INSERT INTO Artist VALUES (115, 'Wormrot')



--Create Album table and insert data--
CREATE TABLE Album (	
    AlbumID int NOT NULL PRIMARY KEY, 
	ArtistID int FOREIGN KEY REFERENCES Artist(ArtistID),
	Title VARCHAR(60) NOT NULL, 
	ReleaseDate DATETIME
)

INSERT INTO Album VALUES (1, 101, 'Decemberunderground', '2006-06-06 00:00:00')
INSERT INTO Album VALUES (2, 101, 'Very Proud of Ya', '1996-06-18 00:00:00')
INSERT INTO Album VALUES (3, 102, 'In Keeping Secrets of Silent Earth: 3', '2003-10-07 00:00:00')
INSERT INTO Album VALUES (4, 102, 'The Second Stage Turbine Blade', '2002-03-05 00:00:00')
INSERT INTO Album VALUES (5, 103, 'Malevolent Grain', '2009-02-17 00:00:00')
INSERT INTO Album VALUES (6, 104, 'Sunbather', '2013-06-11 00:00:00')
INSERT INTO Album VALUES (7, 105, 'Two Old Dogs', '2017-08-03 00:00:00')
INSERT INTO Album VALUES (8, 106, 'Take This to Your Grave', '2003-05-06 0:00:00')
INSERT INTO Album VALUES (9, 106, 'Infinity on High', '2007-02-06 00:00:00')
INSERT INTO Album VALUES (10, 106, 'Save Rock and Roll', '2013-04-12 00:00:00')
INSERT INTO Album VALUES (11, 107, 'A Blaze in the Northern Sky', '1992-02-26 00:00:00')
INSERT INTO Album VALUES (12, 107, 'The Underground Resistance', '2013-02-25 00:00:00')
INSERT INTO Album VALUES (13, 108, 'Babymetal', '2014-02-26 00:00:00')
INSERT INTO Album VALUES (14, 109, 'Kool Spice', '1994-07-02 00:00:00')
INSERT INTO Album VALUES (15, 109, 'Little Busters', '1998-02-21 00:00:00')
INSERT INTO Album VALUES (16, 110, 'Sports', '2012-11-27 00:00:00')
INSERT INTO Album VALUES (17, 110, 'Holy Ghost', '2016-05-13 0:00:00')
INSERT INTO Album VALUES (18, 111, 'Loveless', '1991-11-04 00:00:00')
INSERT INTO Album VALUES (19, 111, 'm b v', '2013-02-02 00:00:00')
INSERT INTO Album VALUES (20, 112, 'Kentucky', '2012-06-08 00:00:00')
INSERT INTO Album VALUES (21, 112, 'Roads to the North', '2014-08-05 00:00:00')
INSERT INTO Album VALUES (22, 113, 'Full Collapse', '2001-04-10 00:00:00')
INSERT INTO Album VALUES (23, 113, 'War All the Time', '2003-09-16 00:00:00')
INSERT INTO Album VALUES (24, 114, 'Camp Cope', '2016-04-22 00:00:00')
INSERT INTO Album VALUES (25, 114, 'How to Socialise & How to Make Friends', '2018-03-02 00:00:00')
INSERT INTO Album VALUES (26, 115, 'Dirge', '2011-05-03 00:00:00')
INSERT INTO Album VALUES (27, 115, 'Voices', '2016-10-14 00:00:00')

--Create Genre table and insert data--
CREATE TABLE Genre (	
    GenreID int NOT NULL PRIMARY KEY, 
	GenreName VARCHAR(20) NOT NULL
)

INSERT INTO Genre VALUES (1000, 'Grindcore')
INSERT INTO Genre VALUES (2000, 'Black Metal')
INSERT INTO Genre VALUES (3000, 'Bluegrass')
INSERT INTO Genre VALUES (4000, 'Shoegaze')
INSERT INTO Genre VALUES (5000, 'Indie Rock')
INSERT INTO Genre VALUES (6000, 'J-Rock')
INSERT INTO Genre VALUES (7000, 'Emo')
INSERT INTO Genre VALUES (8000, 'Pop Punk')
INSERT INTO Genre VALUES (9000, 'Punk')
INSERT INTO Genre VALUES (10000, 'Prog Rock')
INSERT INTO Genre VALUES (11000, 'Metal')
INSERT INTO Genre VALUES (12000, 'Country')
INSERT INTO Genre VALUES (13000, 'Jazz')
INSERT INTO Genre VALUES (14000, 'Ska')
INSERT INTO Genre VALUES (15000, 'Classical')
INSERT INTO Genre VALUES (16000, 'Folk')
INSERT INTO Genre VALUES (17000, 'Avant-Garde')
INSERT INTO Genre VALUES (18000, 'Hip Hop')
INSERT INTO Genre VALUES (19000, 'Dubstep')
INSERT INTO Genre VALUES (20000, 'Trance')

--Create Track table and insert data--
CREATE TABLE Track (	
    TrackID int NOT NULL PRIMARY KEY, 
	TrackTitle VARCHAR(40) NOT NULL, 
	ArtistID int FOREIGN KEY REFERENCES Artist(ArtistID),
	AlbumID int FOREIGN KEY REFERENCES Album(AlbumID),
	GenreID int FOREIGN KEY REFERENCES Genre(GenreID),
	PlayCount int NULL,
	Rating VARCHAR(20)
)


INSERT INTO Track VALUES (201, 'Summer Shudder', 101, 1, 7000, 233, 'Like')
INSERT INTO Track VALUES (202, 'Love Like Winter', 101, 1, 7000, 202, 'Love')
INSERT INTO Track VALUES (203, 'Perfect Fit', 101, 2, 9000, 52, 'Love')
INSERT INTO Track VALUES (204, 'Fishbowl', 101, 2, 9000, 21, 'Okay')
INSERT INTO Track VALUES (205, 'A Favor House Atlantic', 102, 3, 7000, 453, 'Like')
INSERT INTO Track VALUES (206, 'Blood Red Summer', 102, 3, 7000, 423, 'Okay')
INSERT INTO Track VALUES (207, 'Everything Evil', 102, 4, 7000, 754, 'Okay')
INSERT INTO Track VALUES (208, 'Time Consumer', 102, 4, 7000, 808, 'Like')
INSERT INTO Track VALUES (209, 'A Looming Resonance', 103, 5, 2000, 999, 'Love')
INSERT INTO Track VALUES (210, 'Dream House', 104, 6, 2000, 1254, 'Love')
INSERT INTO Track VALUES (211, 'The Pecan Tree', 104, 6, 4000, 1199, 'Love')
INSERT INTO Track VALUES (212, 'Drunk Again', 105, 7, 3000, 46, 'Okay')
INSERT INTO Track VALUES (213, 'Grand Theft Autumn/Where Is Your Boy', 106, 8, 7000, 457,'Like')
INSERT INTO Track VALUES (214, 'Saturday', 106, 8, 7000, 587, 'Okay')
INSERT INTO Track VALUES (215, 'Thnks fr th Mmrs', 106, 9, 8000, 12, 'Love')
INSERT INTO Track VALUES (216, 'Thriller', 106, 9, 8000, 174, NULL)
INSERT INTO Track VALUES (217, 'Rat a Tat', 106, 10, 8000, 751, 'Okay')
INSERT INTO Track VALUES (218, 'In the Shadow of the Horns', 107, 11, 2000, 689, 'Love')
INSERT INTO Track VALUES (219, 'The Pagan Winter', 107, 11, 2000, 452, NULL)
INSERT INTO Track VALUES (220, 'Leave No Cross Unturned', 107, 12, 11000, 777, 'Like')
INSERT INTO Track VALUES (221, 'Babymetal Death', 108, 13, 11000, 423, 'Like')
INSERT INTO Track VALUES (222, 'Monochrome Lovers', 109, 14, 5000, 1, 'Okay')
INSERT INTO Track VALUES (223, 'Blues Drive Monster', 109, 15, 6000, 138, 'Okay')
INSERT INTO Track VALUES (224, 'Little Busters', 109, 15, 6000, 504, 'Like')
INSERT INTO Track VALUES (225, 'Tears Over Beers', 110, 16, 2000, 574, 'Love')
INSERT INTO Track VALUES (226, 'Coding These to Lukens', 110, 17, 2000, 1122, 'Love')
INSERT INTO Track VALUES (227, 'To Here Knows When', 111, 18, 4000, 3244, 'Like')
INSERT INTO Track VALUES (228, 'Sometimes', 111, 18, 4000, 895,'Love')
INSERT INTO Track VALUES (229, 'If I Am', 111, 19, 4000, 200, NULL)
INSERT INTO Track VALUES (230, 'Bernheim Forest in Spring', 112, 20, 3000, 689, 'Like')
INSERT INTO Track VALUES (231, 'Where Mountains Pierce the Sky', 112, 21, 2000, 666, 'Love')
INSERT INTO Track VALUES (232, 'Understanding in a Car Crash', 113, 22, 7000, 1345, 'Love')
INSERT INTO Track VALUES (233, 'How Long is the Night?', 113, 22, 7000, 1568, 'Love')
INSERT INTO Track VALUES (234, 'War All the Time', 113, 23, 7000, 985, 'Like')
INSERT INTO Track VALUES (235, 'Steps Ascending', 113, 23, 7000, 999, 'Like')
INSERT INTO Track VALUES (236, 'Done', 114, 24, 5000, 888, 'Like')
INSERT INTO Track VALUES (237, 'The Face of God', 114, 25, 5000, 902, 'Love')
INSERT INTO Track VALUES (238, 'Waste of Time', 115, 26, 1000, 667, NULL)
INSERT INTO Track VALUES (239, 'Fake Moral Machine', 115, 27, 1000, 666, 'Okay')

--Crete ArtistGenre table and insert data--
CREATE TABLE ArtistGenre (
	ArtistID int FOREIGN KEY REFERENCES Artist(ArtistID),
	GenreID int FOREIGN KEY REFERENCES Genre(GenreID)
)

INSERT INTO ArtistGenre VALUES (101, 7000)
INSERT INTO ArtistGenre VALUES (101, 8000)
INSERT INTO ArtistGenre VALUES (101, 9000)
INSERT INTO ArtistGenre VALUES (102, 7000)
INSERT INTO ArtistGenre VALUES (102, 10000)
INSERT INTO ArtistGenre VALUES (103, 2000)
INSERT INTO ArtistGenre VALUES (104, 2000)
INSERT INTO ArtistGenre VALUES (104, 4000)
INSERT INTO ArtistGenre VALUES (105, 3000)
INSERT INTO ArtistGenre VALUES (106, 7000)
INSERT INTO ArtistGenre VALUES (106, 8000)
INSERT INTO ArtistGenre VALUES (107, 2000)
INSERT INTO ArtistGenre VALUES (107, 9000)
INSERT INTO ArtistGenre VALUES (108, 11000)	
INSERT INTO ArtistGenre VALUES (109, 5000)	
INSERT INTO ArtistGenre VALUES (109, 6000)	
INSERT INTO ArtistGenre VALUES (109, 13000)	
INSERT INTO ArtistGenre VALUES (110, 7000)	
INSERT INTO ArtistGenre VALUES (110, 8000)	
INSERT INTO ArtistGenre VALUES (111, 4000)	
INSERT INTO ArtistGenre VALUES (112, 2000)	
INSERT INTO ArtistGenre VALUES (112, 3000)	
INSERT INTO ArtistGenre VALUES (113, 7000)	
INSERT INTO ArtistGenre VALUES (114, 5000)
INSERT INTO ArtistGenre VALUES (115, 1000)

--Write a SELECT query that uses a WHERE clause--

SELECT *
FROM Track
WHERE PlayCount > 600

--Write a SELECT query that uses an OR and an AND operator--

SELECT *
FROM Track 
WHERE (Rating = 'Like' or Rating = 'Okay')
AND PlayCount > 700

--Write a SELECT that filters NULL rows using IS NOT NULL--

SELECT *
FROM TRACK
WHERE Rating IS NOT NULL

--Write a DML statement that UPDATES a set of rows with a WHERE clause that is a variable--

Declare @oldrating VARCHAR(20) = 'Okay'

UPDATE Track
SET Rating = 'Meh'
WHERE Rating = @oldrating

SELECT *
FROM Track

--Write a DML statement that DELETEs a set of rows with a WHERE clause that is a variable.--

DECLARE @mehrating VARCHAR(20) = 'Meh'

DELETE FROM Track
WHERE Rating = @mehrating

SELECT *
FROM Track

--Write a DML statement that DELETEs rows from a table that another table references--

BEGIN TRANSACTION 
  
	DELETE FROM Track
	WHERE ArtistID = 105


	DELETE FROM Album
	WHERE ArtistID = 105
  
COMMIT;

--******************************************************************************************************************************--
--******************************************************************************************************************************--
--**********AT THIS POINT YOU NEED TO DROP AND REBUILD THE DATABASE; RECREATING THE TABLES AND RE-INSERTING THEIR VALUES********--
--******************************************************************************************************************************--
--******************************************************************************************************************************--

--Write a SELECT query that utilizes a JOIN--

SELECT al.Title, ar.ArtistName
FROM Album al
Join Artist ar
ON al.ArtistID = ar.ArtistID

--Write a SELECT query that utilizes a JOIN with 3 or more tables--

SELECT tr.TrackTitle, al.Title, ar.ArtistName
FROM Track tr
JOIN Album al 
ON tr.AlbumID = al.AlbumID
JOIN Artist ar
ON al.ArtistID = ar.ArtistID

--Write a SELECT query that utilizes a LEFT JOIN--

SELECT al.Title, tr.TrackTitle, tr.Rating
FROM Track tr
LEFT JOIN Album al
ON tr.AlbumID = al.AlbumID

--Write a SELECT query that utilizes a variable in the WHERE clause--

DECLARE @meh varchar(20) = 'Okay'

SELECT *
FROM Track
WHERE Rating = @meh

--Write a SELECT query that utilizes an ORDER BY clause--

SELECT TrackTitle, PlayCount
FROM Track
ORDER BY PlayCount

--Write a SELECT query that utilizes a GROUP BY along with an aggregate function--

SELECT COUNT(tr.TrackTitle), al.Title
FROM Track tr
JOIN Album al
ON tr.AlbumID = al.AlbumID
GROUP BY al.Title

--Write a SELECT statement that utilizes a CALCULATED FIELD--

 SELECT ar.ArtistName +' ' + 'is so EMO!'
  FROM Artist ar
  JOIN ArtistGenre ag
  on ar.Artistid = ag.ArtistID
  JOIN Genre g
  ON ag.GenreID = g.GenreID
  WHERE GenreName = 'Emo'

--Write a SELECT query that utilizes a SUBQUERY--

SELECT TrackTitle, PlayCount
FROM Track
  WHERE PlayCount > (
      SELECT AVG(PlayCount) 
	  FROM Track)

--Write a SELECT query that utilizes a JOIN at at least two OPERATORS and a GROUP BY clause with an aggregate function--

SELECT COUNT(tr.PlayCount) AS NumberofFaves, g.GenreName
FROM Track tr
JOIN Genre G
ON tr.GenreID = g.GenreId
WHERE tr.PlayCount > 800 AND g.GenreName = 'Emo' or g.GenreName = 'Black Metal'
GROUP BY g.GenreName

--Write a SELECT query that utilizes a JOIN with 3 or more tables, at 2 OPERATORS, a GROUP BY  clause with an aggregate function and a HAVING clause--

SELECT COUNT(tr.PlayCount) AS GreatSongs, g.GenreName, al.Title
FROM Track tr
JOIN Genre G
ON tr.GenreID = g.GenreId
JOIN Album al
ON tr.AlbumID = al.AlbumID
WHERE tr.PlayCount > 400 AND g.GenreName = 'Shoegaze' or g.GenreName = 'Punk'
GROUP BY g.GenreName, al.Title
Having COUNT(tr.PlayCount) >1

--Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries--

CREATE NONCLUSTERED INDEX IX_Track_PlayCount ON Track
(
    PlayCount
)

--Design a NONCLUSTERED INDEX with TWO KEY COLUMNs that improves the performance of one of the above queries--

CREATE NONCLUSTERED INDEX IX_Track_TrackTitle_PlayCount ON Track
(
    TrackTitle,
    PlayCount
)

--Design a NONCLUSTERED INDEX with at least ONE KEY COLUMN and one INCLUDED COLUMN--

CREATE NONCLUSTERED INDEX IX_Track_TrackTitle_Rating ON Track
(
    TrackTitle
)
INCLUDE (Rating);