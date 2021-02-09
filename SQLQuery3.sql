/****** Christine Kim  ******/

-- 1)
SELECT [EmployeeId]
      ,[LastName]
      ,[FirstName]
      ,[Title]
      ,[ReportsTo]
      ,[BirthDate]
      ,[HireDate]
      ,[Address]
      ,[City]
      ,[State]
      ,[Country]
      ,[PostalCode]
      ,[Phone]
      ,[Fax]
      ,[Email]
  FROM [Chinook].[dbo].[Employee]

 -- 2)
SELECT [FirstName]
		, [LastName]
		, [Email]
FROM [Chinook].[dbo].[Employee]

 -- 3)
SELECT [Name] AS 'Track Title'
		, [Composer]
		, [AlbumId] 
FROM [Chinook].[dbo].[Track]
WHERE [AlbumId] = 19

 -- 4)
SELECT [Name] AS 'Track Title'
		, [Composer]
		, [AlbumId]
FROM [Chinook].[dbo].[Track]
WHERE [AlbumId] = 19
ORDER BY [Composer], [Name]

 -- 5)
SELECT TOP 5 [BillingCountry]
		, [BillingCity]
		, [Total]
FROM [Chinook].[dbo].[Invoice]
WHERE [BillingCountry] != 'USA'
ORDER BY [Total] DESC

 -- 6)
SELECT DISTINCT [State]
		, [Country]
FROM [Chinook].[dbo].[Customer]
WHERE [Country] = 'USA'

 -- 7)
SELECT [CustomerId]
		, [BillingCity]
		, [BillingPostalCode]
		, [Total]
FROM [Chinook].[dbo].[Invoice]
WHERE [BillingCountry] = 'Germany' AND [Total] > 5
ORDER BY [CustomerId], [Total] DESC

 -- 8)
SELECT DISTINCT TOP 20 [Country] AS 'Country Name'
		, [State] AS 'State or Region'
FROM [Chinook].[dbo].[Customer]
ORDER BY [Country], [State]

 -- 9)
SELECT [AlbumId]
		, [MediaTypeId]
		, [Name]
FROM [Chinook].[dbo].[Track]
WHERE [AlbumId] <= 5 OR [MediaTypeId] = 2
ORDER BY [AlbumId]

 -- 10)
SELECT [AlbumId]
		, [MediaTypeId]
		, [Name]
FROM [Chinook].[dbo].[Track]
WHERE ([AlbumId] = 5 AND [Milliseconds] > 300000) OR [UnitPrice] > 0.99
ORDER BY [AlbumId], [Milliseconds]