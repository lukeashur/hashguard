# HashGuard

A lightweight SHA-256 integrity checker for Linux.

## Features

- SHA-256 hashing of all files in a target directory
- Uses permission-controlled hash file for tamper resistance
- Simple CLI interface

## Usage

Generate SHA-256 hashes for a file or directory:
```bash
./hashguard.sh generate /path/to/target
```
Verify hashes:
```bash
./hashguard.sh verify
```

## Installation

Initialize secure hash directory:
```bash
./hashguard.sh init
```
Create a symbolic link for easy use:
```bash
./hashguard.sh link
```
Make the script executable:
```bash
chmod +x /path/to/hashguard/hashguard.sh
```

