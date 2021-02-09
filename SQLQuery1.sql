-- Christine Kim

-- 1)
SELECT [FirstName]
		, [LastName]
FROM [Chinook].[dbo].[Employee]
WHERE [Chinook].[dbo].[Employee].[ReportsTo] IS NOT NULL

-- 2)
SELECT *
FROM [Chinook].[dbo].[Customer]
WHERE [Chinook].[dbo].[Customer].[State] != 'CA' OR [Chinook].[dbo].[Customer].[State] IS NULL

-- 3)
SELECT *
FROM [Chinook].[dbo].[Invoice]
WHERE [Chinook].[dbo].[Invoice].[InvoiceDate] BETWEEN '4/1/2010' AND '5/1/2010'

-- 4)
SELECT [Title]
		, [AlbumId]
FROM [Chinook].[dbo].[Album]
WHERE [Chinook].[dbo].[Album].[Title] LIKE 'The%'

-- 5)
SELECT *
FROM [Chinook].[dbo].[Album]
WHERE [Chinook].[dbo].[Album].[Title] NOT LIKE '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]%'

-- 6)
SELECT [CustomerId]
		, [BillingCity]
		, [BillingCountry]
		, [InvoiceDate]
FROM [Chinook].[dbo].[Invoice]
WHERE [Chinook].[dbo].[Invoice].[BillingCountry] IN ('Canada','Germany','France','Spain','India')

-- 7)
SELECT *
FROM [Chinook].[dbo].[Album]
WHERE [Chinook].[dbo].[Album].[ArtistId] IN(
	SELECT [ArtistId]
	FROM [Chinook].[dbo].[Artist]
	WHERE [Chinook].[dbo].[Artist].[Name] LIKE '%Black%')

-- 8)
SELECT *
FROM [Chinook].[dbo].[Track]
WHERE [Chinook].[dbo].[Track].[TrackId] NOT IN(
	SELECT [TrackId]
	FROM [Chinook].[dbo].[InvoiceLine])
	
-- 9)
SELECT *
FROM [Chinook].[dbo].[Track]
WHERE ([Chinook].[dbo].[Track].[MediaTypeId] = 5 AND [Chinook].[dbo].[Track].[GenreId] != 1) 
	OR [Chinook].[dbo].[Track].[Composer] = 'Gene Simmons'

-- 10)
SELECT *
FROM [Chinook].[dbo].[Track]
WHERE [Chinook].[dbo].[Track].[AlbumId] = 237 
	AND ([Chinook].[dbo].[Track].[Composer] LIKE '%Dylan%' OR [Chinook].[dbo].[Track].[Composer] LIKE '%Hendrix%')
