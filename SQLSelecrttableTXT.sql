
CREATE TABLE test (
	[data] [text]
)
GO
BULK INSERT [TraningDB].[dbo].[test] 
FROM 'C:\Users\KEI\Documents\Internship\member.txt'
WITH (
 rowterminator = '\n'
)

SELECT 
SUBSTRING([data], 1, 1) AS	'Action',
SUBSTRING([data],2,16) AS	'MBCode',
SUBSTRING([data],16,8) AS	'MBEXP',
SUBSTRING([data],24,23) AS 'MBTNAM',
SUBSTRING([data],47,30) AS 'MBTSUR',
SUBSTRING([data],77,13) AS 'MBID',
SUBSTRING([data],90,8) AS 'MBBIRH',
SUBSTRING([data],98,20) AS 'MBH',
SUBSTRING([data],118,10) AS 'MBPTel',
SUBSTRING([data],128,20) AS 'MBOTel',
SUBSTRING([data],150,1) AS 'MBSTS',
SUBSTRING([data],151,8) AS 'MBDate',
SUBSTRING([data],159,13) AS 'MBTal',
SUBSTRING([data],172,7) AS 'MBTal',
FROM [test]
GO
DROP TABLE test
GO
/*
INSERT INTO TBMMallCard VALUES (
	'A',
	'0000000000000000',
	123456,
	'samart',
	'ketrahong',
	'1',
	'120520',
	'0123456789',
	'0123456789',
	'0123456789',
	'A',
	'020523',
	123456,
	1
)
GO


USE [TraningDB]
GO

SELECT [Action]
      ,[MBCode]
      ,[MBEXP]
      ,[MBTNAM]
      ,[MBTSUR]
      ,[MBID]
      ,[MBBIRH]
      ,[MBHTel]
      ,[MBPTel]
      ,[MBOTel]
      ,[MBSTS]
      ,[MDDate]
      ,[MBTal]
      ,[MBPoint]
  FROM [dbo].[TBMMallCard]
GO
*/

