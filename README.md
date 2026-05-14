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

## DesktopInfo Integration (Windows)

You can display the player list directly on your Windows desktop using DesktopInfo.

### Download DesktopInfo

Download the ZIP version from:

https://www.glenn.delahoy.com/downloads/desktopinfo/DesktopInfo3220.zip

---

### Extract DesktopInfo

Example:

```text
C:\Users\PLAY\Downloads\DesktopInfo\
```

After extraction, the folder should contain:

```text
DesktopInfo.exe
desktopinfo.ini
```

---

### Configure DesktopInfo Startup

Press:

```text
Win + R
```

Run:

```text
shell:startup
```

This opens your Windows Startup folder.

Create a shortcut in that folder pointing to:

```text
C:\Users\PLAY\Downloads\DesktopInfo\DesktopInfo.exe
```

---

### Configure Shortcut Target

Edit the shortcut properties and modify the **Target** field so it includes your custom INI file:

```text
"C:\Users\PLAY\Downloads\DesktopInfo\DesktopInfo.exe" "C:\Users\PLAY\Documents\scripts\a51_players_list\a51_players_list.ini"
```

This will automatically launch DesktopInfo at login using the included configuration.

---

### Example DesktopInfo Configuration

Example `a51_players_list.ini`:

```ini
[options]
top=20
right=5
width=350

font-face=Consolas
font-size=10

text-color=ffffff
background-color=000000
background-opacity=150

script=C:\Users\PLAY\Documents\scripts\a51_players_list\a51_players_list.ps1

[items]
CMD=color:00ff00,active:1,interval:3600,text: ,file:cmd.exe,parameters:/c echo Area 51 Players,display:%4

CMD=active:1,interval:5,text: ,file:powershell.exe,parameters:-ExecutionPolicy Bypass -File "<script>",display:%4
```

---

### Example Desktop Output

```text
Area 51 Players
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
