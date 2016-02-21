CREATE PROCEDURE [dbo].[ReturnSysJobsFromMSDB]

AS
--SELECT * from msdb.dbo.sysjobs j;

	SELECT [job_id], [originating_server_id], [name], [enabled], [description], [start_step_id], [category_id]
	, [owner_sid], [notify_level_eventlog], [notify_level_email], [notify_level_netsend], [notify_level_page]
	, [notify_email_operator_id], [notify_netsend_operator_id], [notify_page_operator_id], [delete_level]
	, [date_created], [date_modified], [version_number] FROM msdb.dbo.sysjobs j

