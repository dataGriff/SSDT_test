CREATE PROCEDURE [dbo].[ReturnSysJobsFromMSDB]

AS
	SELECT * FROM msdb.dbo.sysjobs j;