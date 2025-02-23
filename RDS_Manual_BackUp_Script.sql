-- Initiates a backup of the specified database and stores it in the given S3 bucket.
EXEC [MSDB].[DBO].[rds_backup_database]
    @source_db_name = 'MyDatabase',  -- 'MyDatabase' is the database name to be backed up.
    @s3_arn_to_backup_to = N'arn:aws:s3:::myS3Bucket/myDatabaseBackup.bak'  
    -- 'myS3Bucket' is the S3 Bucket which will contain 'myDatabaseBackup.bak' file which is the desired backup file.

-- Checks the status of the backup or any other RDS task in progress.
EXEC [MSDB].[DBO].[rds_task_status]
