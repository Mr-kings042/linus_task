# Evidence Collection

Do not place fabricated screenshots or output in this directory.

The uploaded task requires evidence for the final recursive listing and may require screenshots/text evidence for the practical steps depending on the instructor's submission process.

## Required Submission Evidence

### 1. Final recursive listing

Run:

```bash
ls -laR /home/agent007/mission/
```

Capture either:

- a screenshot showing the command and complete output; or
- a text file containing the actual output.

Suggested filename:

```text
final-recursive-listing.png
```

or:

```text
final-recursive-listing.txt
```

### 2. Useful step evidence

If screenshots are being collected for the practical record, suggested names are:

| Filename | What it should prove |
|---|---|
| `01-user-created.png` | `agent007` exists and verification output |
| `02-user-session.png` | `whoami` confirms work is being performed as `agent007` |
| `03-workspace-created.png` | Required `mission`, `intel`, `ops`, and `backup` structure |
| `04-files-created.png` | Required initial files exist |
| `05-listings-created.png` | Listing commands and generated listing files |
| `06-copy-and-remove.png` | Copy of `routes.txt` and removal of `keys.txt` |
| `07-permissions.png` | `chmod 640` and `ls -l` verification |
| `08-recovery.png` | Backup deletion followed by restoration |
| `09-ownership.png` | Root ownership change followed by `agent007` observing with `ls -l` |
| `10-final-recursive-listing.png` | Final `ls -laR /home/agent007/mission/` required for submission |

These filenames are organizational suggestions, not additional task requirements.

## Terminal Output

If text evidence is preferred, place actual command output under:

```text
evidence/terminal-output/
```

Do not invent output.

## Screenshot Quality

Where screenshots are used:

- Show the command and relevant output.
- Avoid cropping away the command that produced the evidence.
- Do not include passwords or secrets.
- Use the suggested numbering consistently.
