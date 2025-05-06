# HashGuard

A lightweight file integrity checker for Linux.

## Features

- SHA-256 hashing of all files in a target directory
- Support for importing and verifying third-party hashes
- Permission-controlled hash file for tamper resistance
- Simple CLI interface

## Usage

### Generate Hashes

```bash
./hashguard.sh init
./hashguard.sh generate /path/to/target
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

