# Scripts

Only one helper script is included because the task benefits from a read-only verification check.

## `verify.sh`

Checks that the required final paths exist and reports the current permissions/ownership of `targets.txt`.

It does **not** create users, change permissions, change ownership, delete files, or modify the lab workspace.

Run as `agent007`:

```bash
bash scripts/verify.sh
```

The script is a convenience check only. The practical steps should still be performed manually so that the learning and error-recovery requirements are preserved.
