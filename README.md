# HashGuard

A lightweight SHA-256 integrity checker for Linux & macOS.

## Installation

Initialize secure hash directory:
```bash
./hashguard.sh init
```
Create a symlink for easy use:
```bash
./hashguard.sh link
```
Make the script executable:
```bash
chmod +x /path/to/hashguard/hashguard.sh
```

## Features

- SHA-256 hashing of all files in a target directory
- Uses secure permission-controlled hash file for tamper resistance
- Simple CLI interface

## Usage

Generate SHA-256 hash for a file or directory:
```bash
./hashguard.sh generate /path/to/target
```
Verify hashes:
```bash
./hashguard.sh verify
```
