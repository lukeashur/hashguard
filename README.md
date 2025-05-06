# HashGuard

A lightweight file integrity checker for Linux.

## Features

- SHA-256 hashing of all files in a target directory
- Support for importing and verifying third-party hashes
- Permission-controlled hash file for tamper resistance
- Enforces secure hash file permissions
- Simple CLI interface

## Usage

Initialize secure hash directory:
```bash
./hashguard.sh init
```
Generate hashes:
```bash
./hashguard.sh generate /path/to/target
```
Generate with third-party hashes:
```bash
./generate_hashes.sh /path/to/target /var/hashes /path/to/thirdparty/hashes.txt
```
Verify hashes:
```bash
./hashguard.sh verify
```

## Installation
Create a symbolic link for easy use:
```bash
sudo ln -s /path/to/hashguard/hashguard.sh /usr/local/bin/hashguard
```
Make the script executable:
```bash
chmod +x /path/to/hashguard/hashguard.sh
```

