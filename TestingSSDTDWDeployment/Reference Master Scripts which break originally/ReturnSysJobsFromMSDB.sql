CREATE PROCEDURE [dbo].[ReturnSysJobsFromMSDB]

AS
--SELECT * from msdb.dbo.sysjobs j;

	SELECT j.job_id, j.name FROM msdb.dbo.sysjobs j
	where 1 != 0;
