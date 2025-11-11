Here’s your complete **`README.md`** written in Markdown — clean, concise, and matching your existing style:

---

# a51_players_list

Script to show **real players** currently on the Quake III Arena server `ffa.q3a51.com`.

---

## Overview

This script queries the Quake 3 server using **qstat** and filters out all known bot or placeholder names, displaying only active human players.

---

## Bash Version

**Usage (Linux/macOS):**

```bash
./a51_players_list.sh
```

Make sure the script is executable:

```bash
chmod +x a51_players_list.sh
```

---

## PowerShell Version

**Usage (Windows or PowerShell 7+ on any OS):**

```powershell
.\a51_players_list.ps1
```

You must have **`qstat.exe`** (included in this repo) located in the **same directory** as the script.
For example, your folder should look like this:

```
a51_players_list/
├── a51_players_list.ps1
├── qstat.exe
```

Then simply run the PowerShell script — it will automatically call `qstat.exe` from that folder.

---

## Example Output

```
marigold
yosoy
l
```

---

## Notes

* The script removes bot names using a built-in exclusion list.
* The header and ping columns are filtered out automatically.
* Works on **Windows**, **Linux**, and **macOS** (with PowerShell 7+).

---

## License
This project is licensed under the GNU General Public License v3.0 — see the [LICENSE](./LICENSE) file for details.


---
