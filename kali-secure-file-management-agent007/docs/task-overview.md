# Task Overview

## Source Activity

**Practical Task: Secure File Management & User Configuration on Kali Linux**

## Objective

Demonstrate understanding of fundamental Linux file-system and user-management commands by setting up a secure workspace for a newly created user and organizing files with proper permissions and structure.

## Required User

```text
agent007
```

The user must have:

- a home directory;
- `/bin/bash` as the shell;
- membership in the `sudo` group.

The task provides:

```bash
sudo useradd -m -s /bin/bash -G sudo agent007
```

## Required Workspace

```text
/home/agent007/mission/
├── intel/
└── ops/
    └── backup/
```

## Required Files

Initially create in `intel/`:

```text
targets.txt
routes.txt
keys.txt
```

Then create listing files through redirected output:

```text
listing1.txt
listing2.txt
listing3.txt
```

`keys.txt` is later deleted.

## Required Operations

- Create user.
- Set password.
- Switch to the new user.
- Create directories with `mkdir`.
- Navigate with `cd`.
- Create empty files.
- Use `ls`, `ls -l`, and `ls -la`.
- Redirect each listing to its specified file.
- Copy `routes.txt` to `ops/backup/`.
- Remove `keys.txt`.
- Set `targets.txt` to owner read/write, group read, others no permissions.
- Verify permissions with `ls -l`.
- Intentionally remove the backup copy of `routes.txt`.
- Restore it by copying from `intel/`.
- As root, change ownership of `intel/targets.txt` to another user (the task gives `root` as an example).
- Switch back to `agent007` and observe with `ls -l`.

## Privilege Rule

The task says not to use root for file operations. All steps except `useradd` and `usermod` are to be performed with the new user's account, with the task's explicit Step 8 ownership-change requirement performed as root.

## Submission

The uploaded task requires:

1. Command history (`.bash_history` or copy-paste of commands).
2. Screenshot or text file showing:
   ```bash
   ls -laR /home/agent007/mission/
   ```
3. A 4–5 line explanation of `chmod`, `ls -l`, and `useradd`.
