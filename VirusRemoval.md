# Virus Removal Guide

## Tools for removing viruses
- [Malwarebytes](https://www.malwarebytes.com/mwb-download/thankyou)
- [Hitman Pro](https://www.majorgeeks.com/files/details/hitman_pro.html)
- [Kaspersky Virus Removal Tool](https://www.kaspersky.com/downloads/free-virus-removal-tool)
- [Kaspersky Rescue Disk](https://www.kaspersky.com/downloads/free-rescue-disk)
- [NoMoreRansom Crypto-Sheriff](https://www.nomoreransom.org/crypto-sheriff.php)
- [ADWCleaner](https://adwcleaner.malwarebytes.com/adwcleaner?channel=release)

## Ransomware
### Requirements
- USB Stick (1GB+)
- External Disk or other Medium to save data to (might be optional if Kaspersky Rescue Disk is successful)

### Tools used
- [No More Ransom Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php)
- [Kaspersky Rescue Disk](https://www.kaspersky.com/downloads/free-rescue-disk)
- Acronis Bootable Media (optional)

### Steps
- Create a [Kaspersky Rescue Disk](https://www.kaspersky.com/downloads/free-rescue-disk) from a clean System
- Boot Kaserpsky Rescue Disk on infected system
- Connect system to internet
- Upload two files to Crypto-Sherrif to identify ransomware
- Update Database and run a full scan
- Check if Ransomware could be removed successfully
- Create backup with Acronis Bootable Media or move all encrypted files to external disk/backup medium
- Perform a clean install
- Move encrypted files to new system
- Download decrypter (if found) suggested by Crypto-Sherrif
- Decrypt files (if possible, otherwise: hold on to files until decrypter has been released)

## PUP
### Tools used
- [ADWCleaner](https://adwcleaner.malwarebytes.com/adwcleaner?channel=release)

### Steps
- Download and install ADWCleaner
- Run ADWCleaner
- Remove all detections
