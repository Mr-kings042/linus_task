#!/usr/bin/env bash

# Kali Linux — Secure File Management & User Configuration
# This file is a command reference, not a blind automation script.
# Execute commands manually and observe the required privilege boundaries.

# ============================================================
# PHASE 1 — USER CREATION
# Account: authorized administrator using sudo
# ============================================================

sudo useradd -m -s /bin/bash -G sudo agent007

# Verify the user:
id agent007
getent passwd agent007

# ============================================================
# PHASE 2 — PASSWORD + SWITCH USER
# Account: authorized administrator
# ============================================================

sudo passwd agent007

# Manual interaction: enter the password when prompted.
# Do NOT record the password in this repository.

su - agent007

# Confirm the active account:
whoami
pwd

# ============================================================
# PHASE 3 — WORKSPACE
# Account: agent007
# ============================================================

mkdir -p /home/agent007/mission/intel
mkdir -p /home/agent007/mission/ops/backup

cd /home/agent007/mission
cd intel

# Verify:
ls -la /home/agent007/mission
ls -la /home/agent007/mission/ops
ls -la /home/agent007/mission/ops/backup

# ============================================================
# PHASE 4 — FILE CREATION + LISTINGS
# Account: agent007
# ============================================================

cd /home/agent007/mission/intel
touch targets.txt routes.txt keys.txt

ls

ls > listing1.txt
ls -l > listing2.txt
ls -la > listing3.txt

cat listing1.txt
cat listing2.txt
cat listing3.txt

# ============================================================
# PHASE 5 — COPY + REMOVE
# Account: agent007
# ============================================================

cp routes.txt /home/agent007/mission/ops/backup/

ls -la /home/agent007/mission/ops/backup/

rm keys.txt

ls -la /home/agent007/mission/intel/

# ============================================================
# PHASE 6 — PERMISSIONS
# Account: agent007
# ============================================================

chmod 640 targets.txt

ls -l targets.txt

# ============================================================
# PHASE 7 — ERROR SIMULATION + RECOVERY
# Account: agent007
# ============================================================

rm /home/agent007/mission/ops/backup/routes.txt

ls -la /home/agent007/mission/ops/backup/

cp /home/agent007/mission/intel/routes.txt /home/agent007/mission/ops/backup/

ls -la /home/agent007/mission/ops/backup/

# ============================================================
# PHASE 8 — OWNERSHIP CHANGE
# Account: ROOT ONLY FOR THIS STEP
# ============================================================

sudo -i

# The task gives root as an example of the new owner:
chown root /home/agent007/mission/intel/targets.txt

# Return from the root shell:
exit

# Back as agent007:
whoami
ls -l /home/agent007/mission/intel/targets.txt

# ============================================================
# FINAL VERIFICATION
# Account: agent007
# ============================================================

ls -laR /home/agent007/mission/

# Preserve your real command history separately.
# Do not copy passwords or secrets into submission files.
