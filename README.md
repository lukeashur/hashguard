# HashGuard

A lightweight, version-controlled file integrity checker for Linux.

## Features

- SHA-256 hashing of all files in a target directory
- Git version control of hash records
- Simple CLI interface

## Usage

```bash
./hashguard.sh init
./hashguard.sh generate /path/to/target
./hashguard.sh verify
./hashguard.sh history
./hashguard.sh diff
```

## Installation

```bash
sudo ln -s /path/to/hashguard/hashguard.sh /var/hashguard
```
