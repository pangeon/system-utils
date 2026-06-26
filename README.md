# system-utils
Powershell scripts for Windows and bash Linux tools.

## Windows

1. Open **PowerShell** and write:

      ```New-Item -Path $PROFILE -ItemType File -Force```

      System create new dir *WindowsPowerShell* and empty file *Microsoft.PowerShell_profile.ps1*

2. Open file *Microsoft.PowerShell_profile.ps1* and paste selected function from repository.

      ```notepad $PROFILE```

## Linux

```
$user@user: info

Your scripts path is: /usr/local/bin/
All commands list here:
---------------------
asm  birth  bit-calc  c  fix-pl  hardware  info  list  matrix  note  restic-help  restic-update  script  update  vh
---------------------

```


1. Copy bash scripts to: ```/usr/local/bin/```
2. The *script* command is used to create a new bash file with administrator privileges.


## Help

### PS
- **Get-FolderSize**: show folder list with amount of data used in selected location 
- **Zip-Folders**: packs folders into separate archives in selected location

### BASH
- **media-spiltter**: command separates video and image files to and moves them to different locations, example *source* -> *destination*:

      media-splitter '/media/cecherz/PATRIOT P210/ALBUMY' '/media/cecherz/PATRIOT P210/VIDEO'

- **script**: script create new **Bash/Linux** command in location: */usr/local/bin/*

- **list**: show list of folders and their size on hard drive.

- **asm**: create simple **NASM x64** schema project.

- **birth**: calc your age.

- **c**: create simple **C** schema project.

- **fix-pl**: fix incorrectly encoded letters in movie subtitles.

- **matrix**: fancy effects from Matrix world.

- **note**: util to create quick notes.

	```
    AUTHOR: cecherz
    Skrypt jest poprawny
    DATE: 2026-01-04 | TIME: 17:40:09
	```

- **update**: a set of commands for updating the system.

- **bit-calc**: low-lewel util to calc binary numbers.

	```
	user@user:~$ bit-calc
	Enter 1st number: 1988
	 00000000 00000000 00000000 00000000 00000000 00000000 00000111 11000100
	Enter 2nd number: 65        
	 00000000 00000000 00000000 00000000 00000000 00000000 00000000 01000001
	XOR      00000000 00000000 00000000 00000000 00000000 00000000 00000111 10000101
	OR       00000000 00000000 00000000 00000000 00000000 00000000 00000111 11000101
	AND      00000000 00000000 00000000 00000000 00000000 00000000 00000000 01000000
	NOT num1 11111111 11111111 11111111 11111111 11111111 11111111 11111000 00111011
	SHL2 LB1 00000000 00000000 00000000 00000000 00000000 00000000 00011111 00010000
	SHR2 LB1 00000000 00000000 00000000 00000000 00000000 00000000 00000001 11110001
	SAL2 LB1 00000000 00000000 00000000 00000000 00000000 00000000 00011111 00010000
	SAR2 LB1 00000000 00000000 00000000 00000000 00000000 00000000 00000001 11110001
	ROL2 LB1 00000000 00000000 00000000 00000000 00000000 00000000 00011111 00010000
	ROL2 LB2 00000000 00000000 00000000 00000000 00000000 00000000 00000001 00000100
	ROR2 LB1 00000000 00000000 00000000 00000000 00000000 00000000 00000001 11110001
	ROR2 LB2 01000000 00000000 00000000 00000000 00000000 00000000 00000000 00010000
	```
- **hardware**: info about Kamil hardware.

- **restic-help, restic-update**: script to create safe copy Kamil data with **restic** util.

- **vh**: command to access on Kamil hosting.

