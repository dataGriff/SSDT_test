CREATE TABLE [dbo].[DimDate]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Date] DATE NOT NULL, 
    [CalendarYear] INT NOT NULL, 
    [MonthName] VARCHAR(10) NOT NULL, 
    [FinancialYear] INT NOT NULL
)