# HashGuard

A lightweight file integrity checker for Linux.

## Features

- SHA-256 hashing of all files in a target directory
- Simple CLI interface

## Usage

```bash
./hashguard.sh init
./hashguard.sh generate /path/to/target
./hashguard.sh verify
```

## Installation

```bash
sudo ln -s /path/to/hashguard/hashguard.sh /usr/local/bin/hashguard
```
