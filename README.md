# VAM-TOOL: Versioned Archive Manager

## Project Description
**vam-tool** is a CLI utility developed for the OS Lab Final Project (Subject #5: Versioned Archive Manager). It automates the process of creating versioned backups of directories (e.g., `project-v1.tar.gz`, `project-v2.tar.gz`). It ensures data integrity using SHA256 checksums and provides easy restoration capabilities.

## Team Members
* Seyed Mahdi Monajem
* Arman Mohammadi

## Installation
To install the package, run the following command in the directory containing the `.deb` file:

```bash
sudo dpkg -i vam-tool_1.0.0-1_all.deb
```
Usage
1. Create a Backup
Creates a new versioned archive of a source directory into a backup directory.

```Bash

vam-tool create <source_dir> <backup_dir>
Example: vam-tool create ./my-project ./backups
```
2. List Archives
Lists all backup archives in a specific directory.

```Bash

vam-tool list <backup_dir>
Example: vam-tool list ./backups
```
3. Restore a Backup
Restores a specific archive to a destination directory. It automatically verifies the SHA256 checksum before extracting.

```Bash

vam-tool restore <archive_path> <destination_dir>
Example: vam-tool restore ./backups/project-v1.tar.gz ./restored_data
```
4. Help & Version
```Bash

vam-tool --help
vam-tool --version
```
Uninstallation
To remove the tool from your system:

```Bash

sudo apt remove vam-tool
```