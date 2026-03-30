# oss-audit-24MIP10148
# OSS Audit — Python
**Student Name:** Hitkarsh Dhakad
**Roll Number:** [24MIP10148]
**Course:** Open Source Software
**Chosen Software:** Python

---

## About This Project
This repository contains five shell scripts written as part of
The Open Source Audit capstone project for the OSS NGMC course.
All scripts are written in Bash and tested on Ubuntu Linux.

---

## Scripts

### Script 1 — System Identity Report
Displays system information including distro, kernel version,
logged-in user, uptime, date, and OS license.

**Run:**
```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```

### Script 2 — FOSS Package Inspector
Checks if Python is installed, displays its version and location,
and prints a philosophy note using a case statement.

**Run:**
```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```

### Script 3 — Disk and Permission Auditor
Loops through key Linux directories and reports their permissions,
ownership, and disk usage. Also checks Python's library directory.

**Run:**
```bash
chmod +x script3_disk_auditor.sh
./script3_disk_auditor.sh
```

### Script 4 — Log File Analyzer
Creates a sample Python app log file and scans it for error
keywords, counting matches and displaying the last 5 matching lines.

**Run:**
```bash
chmod +x script4_log_analyzer.sh
./script4_log_analyzer.sh
```

### Script 5 — Open Source Manifesto Generator
Asks the user three interactive questions and generates a
personalised open source philosophy statement saved to a .txt file.

**Run:**
```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

---

## Dependencies
- Bash (pre-installed on all Linux systems)
- `lsb_release` (pre-installed on Ubuntu/Debian)
- `python3` (pre-installed on most modern Linux systems)

## How to Run on Linux
1. Clone this repository:
   `git clone https://github.com/[yourusername]/oss-audit-[rollnumber]`
2. Navigate into the folder:
   `cd oss-audit-[rollnumber]`
3. Make scripts executable:
   `chmod +x *.sh`
4. Run any script:
   `./script1_system_identity.sh`
