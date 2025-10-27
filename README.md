# system-utils
Powershell scripts for Windows and bash Linux tools.

## Windows

1. Open **PowerShell** and write:

      ```New-Item -Path $PROFILE -ItemType File -Force```

      System create new dir *WindowsPowerShell* and empty file *Microsoft.PowerShell_profile.ps1*

2. Open file *Microsoft.PowerShell_profile.ps1* and paste selected function from repository.

      ```notepad $PROFILE```

## Linux

1. Copy bash script to: ```/usr/local/bin/```
2. Change name *script.sh* to *script*.
3. Set access rights: ```chmod 777``` *script*.

## Help

### PS
- **Get-FolderSize**: show folder list with amount of data used in selected location 
- **Zip-Folders**: packs folders into separate archives in selected location

### BASH
- **media-spiltter**: command separates video and image files to and moves them to different locations, example *source* -> *destination*:

      media-splitter '/media/cecherz/PATRIOT P210/ALBUMY' '/media/cecherz/PATRIOT P210/VIDEO'
