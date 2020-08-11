SET SRC="C:\Users\scott\Dropbox (KillenCPA)\Office"
SET DEST="C:\Users\scott\Dropbox (KillenCPA)\KANAS\backups"
SET YMD=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%
SET LOG=C:\Users\scott\BackupJobs\logs\OfficeQB--%YMD%.txt
SET OPT=/MIR /NP /R:5 /MT:32 /LOG+:%Log% /TS /FP
SET CMD=robocopy %SRC% %DEST% %OPT%
(%CMD%) ^& IF %ERRORLEVEL% LSS 8 SET ERRORLEVEL = 0