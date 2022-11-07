SET SRC="C:\Obsidian"
SET DEST="C:\Users\scott\KillenCPA Dropbox\Scott Killen\Obsidian"
SET YMD=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%
SET LOG=C:\Users\scott\BackupJobs\logs\Obsidian--%YMD%.txt
SET OPT=/MIR /NP /R:5 /MT:32 /LOG+:%Log% /TS /FP /XD "C:\Obsidian\Personal\.git" "C:\Obsidian\Personal\.trash" "C:\Obsidian\Work\.trash" "C:\Obsidian\Work\.git"
SET CMD=robocopy %SRC% %DEST% %OPT%
(%CMD%) ^& IF %ERRORLEVEL% LSS 8 SET ERRORLEVEL = 0
