SET SRC="C:\Users\scott\Documents"
SET DEST="C:\Users\scott\Dropbox (KillenCPA)\Backups\Office"
SET YMD=%DATE:~10,4%-%DATE:~7,2%-%DATE:~4,2%
SET LOG=C:\Users\scott\BackupJobs\logs\Documents--%YMD%.txt
SET OPT=/MIR /NP /R:5 /MT:32 /LOG+:%Log% /TS /FP /XD "C:\Users\scott\Documents\FinePrint files\AutoSave" "C:\Users\scott\Documents\PDF files\AutoSave"
SET CMD=robocopy %SRC% %DEST% %OPT%
%CMD%