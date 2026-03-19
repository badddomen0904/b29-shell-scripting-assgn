
# Shell Scripting Assignments

---

## 1. Password Strength Validator
**Commands Used:**
- read
- grep
- wc
- if-else

**Core Deliverables:**
- Read password input from user
- Check length ≥ 8 characters
- Check at least one digit (0–9)
- Check at least one special character (!@#$%^&*)
- Output exactly one: Weak / Medium / Strong
- Handle empty input without crashing

**Bonus Deliverables:**
- Check for both uppercase and lowercase letters
- Hide input while typing

---

## 2. Process Lookup Script
**Commands Used:**
- ps aux
- grep
- awk

**Core Deliverables:**
- Accept process name as argument
- Display PID, CPU%, MEM%, COMMAND
- Exclude the grep process from results
- If no process found, print: "No process found"

**Bonus Deliverables:**
- Case-insensitive search
- Limit output to top 5 matches

---

## 3. System Info Snapshot Script
**Commands Used:**
- uptime
- free -h
- df -h
- echo

**Core Deliverables:**
- Display CPU load (from uptime, not full output)
- Display RAM usage as "Used / Total"
- Display disk usage (%) of root (/)
- Output must be clean and labeled (no raw command dumps)

**Bonus Deliverables:**
- Add colored output
- Display system uptime separately

---

## 4. Disk Usage Monitor
**Commands Used:**
- df -h
- awk
- if

**Core Deliverables:**
- Extract disk usage % of root (/)
- Compare against threshold = 80%
- Print warning if exceeded:
  "WARNING: Disk usage exceeded threshold"
- Do not print full df output

**Bonus Deliverables:**
- Accept threshold as command-line argument
- Check all mounted partitions

---

## 5. Directory Backup Script
**Commands Used:**
- cp -r
- date
- mkdir -p

**Core Deliverables:**
- Accept directory path as argument
- Create backup folder with timestamp (backup_YYYY-MM-DD_HH-MM)
- Copy all contents recursively
- Print backup location
- Handle invalid directory path

**Bonus Deliverables:**
- Compress backup into .tar.gz
- Keep only last N backups (delete older ones)

---

## 6. Network Information Script
**Commands Used:**
- ip a / ifconfig
- hostname -I
- ss / netstat

**Core Deliverables:**
- Display local IP address
- Display number of active connections
- Prefer `ip` command; fallback if unavailable
- Output must be clean and minimal

**Bonus Deliverables:**
- Display default gateway
- Display open ports

---

## 7. Downloads Folder Organizer
**Commands Used:**
- mv
- mkdir -p
- for loop

**Core Deliverables:**
- Create folders: Images, Documents, Videos, Others
- Move files:
  *.jpg, *.png → Images  
  *.pdf, *.txt → Documents  
  *.mp4, *.mkv → Videos
- Do not crash if no matching files
- Print summary of moved files

**Bonus Deliverables:**
- Dry-run mode (print actions without executing)
- Prevent overwriting duplicate filenames

---

## 8. Git Repository Summary Script
**Commands Used:**
- git rev-list --count HEAD
- git shortlog -sn
- git branch --show-current
- git log --name-only
- sort, uniq, head

**Core Deliverables:**
- Check if current directory is a git repo
- Display:
  - Current branch
  - Total commits
  - Top 3–5 contributors
  - Top 5 recently modified files
- Output must be structured and readable

**Bonus Deliverables:**
- Accept GitHub repo URL (clone → analyze)
- Add colored output sections

---

## 9. Word Frequency Analyzer
**Commands Used:**
- tr
- sort
- uniq -c
- head

**Core Deliverables:**
- Accept input file as argument
- Output top 5 most frequent words
- Remove punctuation
- Handle missing or empty file

**Bonus Deliverables:**
- Case-insensitive counting
- Ignore common stop words (the, is, and, etc.)

---

## 10. Duplicate File Detector
**Commands Used:**
- find
- sort
- uniq
- awk

**Core Deliverables:**
- Scan directory (current or given)
- Identify duplicate files by name
- Print list of duplicate filenames
- Ignore directories
- Do not delete any files

**Bonus Deliverables:**
- Detect duplicates using file size or checksum
- Add option to delete duplicates with confirmation
