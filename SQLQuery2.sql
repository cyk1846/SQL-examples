-- Christine Kim

-- 1)
SELECT [Name]
		, REPLACE(Name, ' & ', ' and ') NewName
FROM [Chinook].[dbo].[Genre]
WHERE [Chinook].[dbo].[Genre].[Name] LIKE '%&%'

-- 2)
SELECT [FirstName] + ' ' + [LastName] AS FullName
		, Day([BirthDate]) AS Day
		, DATENAME(MONTH, [BirthDate]) AS Month
		, Year([BirthDate]) AS Year
FROM [Chinook].[dbo].[Employee]

-- 3)
SELECT REPLACE([Title], ' ', '') TitleNoSpaces
		, UPPER([Title]) TitleUpperCase
		, REVERSE([Title]) TitleReverse
		, PATINDEX(' ', [Title]) SpaceLocation
FROM [Chinook].[dbo].[Album]

-- 4)
SELECT [FirstName]
		, [LastName]
		, [BirthDate]
		, DATEDIFF(YEAR, [BirthDate], GETDATE()) Age
FROM [Chinook].[dbo].[Employee]

-- 5)
SELECT [Title]
		, LTRIM(SUBSTRING([Title], 1, CHARINDEX(' ', [Title]))) ShortTitle
FROM [Chinook].[dbo].[Employee]

-- 6)
SELECT [FirstName]
		, [LastName]
		, LEFT([FirstName], 1) + LEFT([LastName], 1) Initials
FROM [Chinook].[dbo].[Customer]
ORDER BY [Initials]

-- 7)
SELECT [FirstName] + ' ' + [LastName] AS Name
		, REPLACE(REPLACE([Phone], '+1 ',''), '-', ' ') Phone
		, ISNULL(REPLACE(REPLACE([Fax], '+1 ', ''), '-', ' '), 'Unknown') Fax
FROM [Chinook].[dbo].[Customer]
WHERE [Chinook].[dbo].[Customer].[Country] = 'USA'
ORDER BY [LastName]

-- 8)
SELECT UPPER([LastName] + ', ' + [FirstName]) AS CustomerName
		, ISNULL([Company], 'N/A')
FROM [Chinook].[dbo].[Customer]
WHERE [LastName] LIKE '[ABCDEFGHIJKLM]%'

-- 9)
SELECT [InvoiceId]
		, [CustomerId]
		, [Total]
		, CONVERT(date, [InvoiceDate]) AS InvoiceDate
		, IIF(MONTH([InvoiceDate]) > 6, YEAR([InvoiceDate])+1, YEAR([InvoiceDate])) AS FiscalYear
FROM [Chinook].[dbo].[Invoice]
ORDER BY InvoiceDate DESC

-- 10)
SELECT IIF([Country]='USA' OR [Country]='Canada', 'Domestic', 'International') AS CustomerType
		, [FirstName]
		, [LastName]
		, [Country]
FROM [Chinook].[dbo].[Customer]
ORDER BY CustomerType, [LastName]