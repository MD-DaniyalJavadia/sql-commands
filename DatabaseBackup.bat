@echo off
SET db_name=DataBase
SET db_user=sa
SET db_password=princes
SET backup_path=E:\Webapplication\DataBaseBackup\BackUp.bak
SET server_name=.\Sql2022

REM -- Database backup command
sqlcmd -S %server_name% -U %db_user% -P %db_password% -Q "BACKUP DATABASE [%db_name%] TO DISK='%backup_path%'"

REM -- Professional completion message
echo --------------------------------------------------------
echo  The database backup has been successfully completed.
echo  Backup file location:
echo  %backup_path%
echo --------------------------------------------------------
pause
