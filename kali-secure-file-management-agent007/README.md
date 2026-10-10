# Kali Linux — Secure File Management & User Configuration

## Overview

This repository is a GitHub-ready workflow for the practical task **“Secure File Management & User Configuration on Kali Linux.”**

The activity demonstrates fundamental Linux user management, file-system navigation, file creation, directory organization, file permissions, copying/removal, basic error recovery, and ownership handling.

> **Important:** This repository is a workflow/template. It contains no fabricated command output, screenshots, permissions, ownership results, or completed lab evidence.

## Objective

Demonstrate understanding of fundamental Linux file-system and user-management commands by setting up a secure workspace for the newly created user `agent007` and organizing files with the required permissions and structure.

## Task Requirements

The uploaded task requires:

1. Create user `agent007` with a home directory and `/bin/bash` shell.
2. Add `agent007` to the `sudo` group.
3. Set a password and switch to `agent007`.
4. Perform the remaining file operations using `agent007`, except for the explicitly required ownership change in Step 8.
5. Create:
   ```text
   /home/agent007/mission/
   ├── intel/
   └── ops/
       └── backup/
   ```
6. Create empty files in `intel/`:
   - `targets.txt`
   - `routes.txt`
   - `keys.txt`
7. Run `ls`, `ls -l`, and `ls -la`, redirecting each output to:
   - `listing1.txt`
   - `listing2.txt`
   - `listing3.txt`
8. Copy `routes.txt` to `ops/backup/`.
9. Delete `keys.txt` from `intel/`.
10. Set `targets.txt` permissions to owner read/write, group read-only, and others no access (`640`).
11. Verify permissions with `ls -l`.
12. Intentionally remove `ops/backup/routes.txt`.
13. Copy `routes.txt` from `intel/` back into `ops/backup/`.
14. As root, change ownership of `intel/targets.txt` to another user (the task gives `root` as an example), then switch back to `agent007` and observe the result with `ls -l`.
15. Submit command history, final recursive listing output, and a 4–5 line explanation of `chmod`, `ls -l`, and `useradd`.

## Technologies / Tools

- Kali Linux
- Bash
- `useradd`
- `usermod`
- `passwd`
- `su`
- `mkdir`
- `cd`
- `touch`
- `ls`
- `cp`
- `rm`
- `chmod`
- `chown`
- shell output redirection (`>`)

## Prerequisites

- A Kali Linux environment.
- Access to an account capable of performing the required user-creation commands.
- Permission to use `sudo` where the task explicitly requires it.
- A terminal.
- The task must be performed only in an environment where you are authorized to administer users/files.

## Critical Privilege Rule

The task explicitly states that **root must not be used for file operations**. A new user must be created, and all steps except `useradd` and `usermod` must be performed using that user's account.

There is one explicit exception later in the task:

> In Step 8, ownership of `intel/targets.txt` must be changed **as root**, after which you switch back to `agent007` and observe the result.

Follow the task's sequence exactly rather than running the whole activity as root.

## Repository Structure

```text
kali-secure-file-management-agent007/
├── README.md
├── .gitignore
├── docs/
│   ├── README.md
│   └── task-overview.md
├── workflow/
│   ├── README.md
│   └── workflow.md
├── commands/
│   ├── README.md
│   └── commands.sh
├── scripts/
│   ├── README.md
│   └── verify.sh
├── evidence/
│   ├── README.md
│   ├── screenshots/
│   │   └── .gitkeep
│   └── terminal-output/
│       └── .gitkeep
└── submission/
    ├── README.md
    ├── command-history.txt
    └── final-output.txt
```

## Step-by-Step Workflow

See [`workflow/workflow.md`](workflow/workflow.md) for the complete practical procedure, including command privilege level, expected results, verification, and evidence to capture.

The short sequence is:

1. Create `agent007`.
2. Set its password and switch to it.
3. Create the required `mission/intel` and `mission/ops/backup` structure.
4. Create the three required files.
5. Generate the three listing files.
6. Copy and remove files as required.
7. Apply `640` to `targets.txt`.
8. Perform the intentional deletion and recovery.
9. Perform the explicit root-only ownership change.
10. Capture final evidence and prepare submission materials.

## Expected Final State

The task does not require a fabricated exact final listing in this repository. After you perform the lab, your actual output should be captured.

The expected **paths/files** based on the task are:

```text
/home/agent007/mission/
├── intel/
│   ├── targets.txt
│   ├── routes.txt
│   ├── listing1.txt
│   ├── listing2.txt
│   └── listing3.txt
└── ops/
    └── backup/
        └── routes.txt
```

`keys.txt` should have been removed.

`targets.txt` should have permissions equivalent to:

```text
-rw-r-----
```

The owner after Step 8 should reflect the user selected in the root-only ownership command (the task gives `root` as an example). Record your actual result.

## Evidence

Do not create fake evidence.

Use [`evidence/README.md`](evidence/README.md) to record which screenshots/output should be captured and what each item proves.

## Submission

The task explicitly requires:

- Command history (`.bash_history` or a copy-paste of commands used).
- Screenshot or text file showing:
  ```bash
  ls -laR /home/agent007/mission/
  ```
- A 4–5 line explanation of what `chmod`, `ls -l`, and `useradd` do.

See [`submission/README.md`](submission/README.md).

## Troubleshooting

### `su - agent007` does not work

Confirm that the user exists and has a password:

```bash
id agent007
```

Then, as an authorized administrator, set the password if necessary:

```bash
sudo passwd agent007
```

### Permission denied while creating files

Confirm which account you are using:

```bash
whoami
```

The file operations are intended to be performed as `agent007`, not as root.

### `targets.txt` permissions are wrong

As `agent007`, run:

```bash
chmod 640 /home/agent007/mission/intel/targets.txt
ls -l /home/agent007/mission/intel/targets.txt
```

### Ownership change cannot be performed

The task explicitly requires the ownership change to be done as root. Do not use root for the other file operations.

## Safety / Permission Notes

- Perform this activity only on a Kali Linux system you are authorized to administer.
- Do not substitute unrelated users, paths, filenames, or permissions for the task's specified values.
- Do not run an automated script that performs privileged account changes unless you understand and intentionally approve each operation.
- `commands/commands.sh` is provided as an ordered command reference; manual steps are intentionally marked.
