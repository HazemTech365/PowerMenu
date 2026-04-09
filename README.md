<img src="https://github.com/HazemTech365/PowerMenu/blob/7f20d860ded1f8420b3fe1378af7dee4d2d2879a/powermenu.png?raw=true" width="80" alt="PowerMenu Icon">

# PowerMenu (DISCONTINUED)

**A portable Windows power menu with shutdown, restart, Safe Mode, and advanced recovery options — all in one place.**

<p align="left">
  <img src="https://img.shields.io/badge/Platform-Windows-007ec6?logo=windows&logoColor=white&style=flat">
  <img src="https://img.shields.io/badge/Language-AutoIt-007ec6?style=flat">
  <img src="https://img.shields.io/github/license/HazemTech365/PowerMenu?label=License&color=007ec6&style=flat">
  <img src="https://img.shields.io/github/downloads/HazemTech365/PowerMenu/total?label=Downloads&logo=github&color=007ec6&style=flat">
</p>

---

## 🎬 Demo

[![Watch PowerMenu Demo](https://img.youtube.com/vi/zWv_q7QPIGY/0.jpg)](https://youtu.be/zWv_q7QPIGY)

Click the thumbnail to watch the demo.

---

## Quick Start

1. Download `PowerMenu_x64.exe` (or `PowerMenu_x86.exe` for 32-bit)
2. Right-click → **Run as Administrator**
3. All power options are immediately available

> Tip: Pin PowerMenu to the Taskbar or Start Menu for quicker access.

---

## Features

- Shutdown, Restart, Sleep, Hibernate, Log Off
- Lock Screen
- Force Shutdown & Force Restart
- Restart Windows Explorer
- Reboot to UEFI Firmware Settings *(UEFI systems only)*
- Reboot to Advanced Recovery

**Safe Mode options:**

<details>
<summary>Expand Safe Mode options</summary>

- Minimal (Safe Mode)
- Networking (Safe Mode with Networking)
- Command Prompt (Safe Mode with Command Prompt)
- Exit Safe Mode *(auto-detected if already in Safe Mode)*

> Admin rights required for Safe Mode and advanced options.

</details>

---

## 🖼️ Screenshots

**Icon**
<img src="https://github.com/HazemTech365/PowerMenu/blob/7f20d860ded1f8420b3fe1378af7dee4d2d2879a/powermenu.png?raw=true" width="150" alt="Icon">

**Main Menu**
![Main Menu](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)

**Confirmation Prompt**
![Confirmation Prompt](https://github.com/HazemTech365/PowerMenu/blob/2bfb9c3ac9424164a22f6148be65656d942374c6/Confirmation.png?raw=true)

---

## Command Reference

| Action | Command |
|--------|---------|
| Shutdown | `shutdown /s /t 0` |
| Restart | `shutdown /r /t 0` |
| Sleep | `rundll32.exe powrprof.dll,SetSuspendState 0,1,0` |
| Lock | `rundll32.exe user32.dll,LockWorkStation` |
| Log Off | `shutdown /l` |
| Hibernate | `shutdown /h` |
| Force Shutdown | `shutdown /s /f /t 0` |
| Force Restart | `shutdown /r /f /t 0` |
| Restart Explorer | `taskkill /f /im explorer.exe && start explorer` |
| UEFI Firmware Settings | `shutdown /r /fw /t 0` |
| Advanced Recovery | `shutdown /r /o /t 0` |
| Safe Mode: Minimal | `bcdedit /set {current} safeboot minimal` |
| Safe Mode: Networking | `bcdedit /set {current} safeboot network` |
| Safe Mode: Command Prompt | `bcdedit /set {current} safebootalternateshell yes` |
| Exit Safe Mode | `bcdedit /deletevalue {current} safeboot` |

<details>
<summary>Notes</summary>

- Force Shutdown closes all apps immediately without waiting for save prompts
- Restart Explorer is useful for fixing taskbar or desktop glitches
- Exit Safe Mode automatically removes the safeboot flag if the system is currently in Safe Mode

</details>

---

## 💻 System Requirements

- Windows 8, 10, or 11
- UEFI firmware recommended for firmware-related options
- Administrator rights required for Safe Mode and advanced reboot options

---

## 📥 Download

[![Download PowerMenu](https://img.shields.io/badge/GitHub-Download_PowerMenu-blue?logo=github)](https://github.com/HazemTech365/PowerMenu/releases)

Or clone the repo:

```bash
git clone https://github.com/HazemTech365/PowerMenu.git
```

> No installation needed — just run the `.exe` as Administrator.

---

## Troubleshooting

- **Safe Mode not working?** Make sure you're running as Administrator.
- **Shutdown or restart seems delayed?** Fast Startup may be interfering.

<details>
<summary>How to disable Fast Startup</summary>

`Control Panel → Power Options → Choose what the power buttons do → Change settings that are currently unavailable → Uncheck "Turn on fast startup"`

</details>

- **Stuck in Safe Mode?** Run Command Prompt as Administrator and use:

<details>
<summary>Exit Safe Mode manually</summary>

```bash
bcdedit /deletevalue {current} safeboot
```

</details>

---

## ⚠️ Known Issues

- Full feature set requires UEFI firmware
- Administrator rights are mandatory for advanced options
- Windows only — no Linux or macOS support
- Some antivirus software may flag the executable due to AutoIt's use of system commands

<details>
<summary>About antivirus false positives</summary>

AutoIt-compiled executables are sometimes flagged as suspicious because they interact with system-level commands. PowerMenu is clean. You can verify the file via SHA-256 or build from source yourself.

</details>

---

## FAQ

**Why does it need admin rights?**
Safe Mode changes and advanced reboot options require system-level permissions that only an administrator can grant.

**Does it work on Windows 7?**
Windows 7 is not officially supported. Some features may not work correctly.

**Does it need to be installed?**
No — it's fully portable. Just run the `.exe`.

**Will there be UI customization?**
UI customization was planned for a future release, but the project has since been discontinued.

---

## 👨‍💻 Coming Soon *(planned before discontinuation)*

- Options menu with toggleable confirmation prompts
- Themes (Classic, Dark, and more)
- CLI mode toggle
- Auto-updater
- Multi-language support

---

## 🔧 Build from Source

1. Install [AutoIt v3](https://www.autoitscript.com/site/autoit/downloads/) (v3.3.14.5 or newer)
2. Optionally install [SciTE4AutoIt3](https://www.autoitscript.com/site/autoit-tools/scite4autoit3/) as an editor
3. Clone the repo:
```bash
git clone https://github.com/HazemTech365/PowerMenu.git
```
4. Open `PowerMenu.au3` and press F7 to compile
5. Run the output `PowerMenu.exe`

---

## License

```
MIT License

Copyright (c) 2025 Hazem Mohamed

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## TL;DR

PowerMenu is a portable Windows app covering shutdown, restart, sleep, hibernate, Safe Mode, and advanced reboot — no installation required. Admin rights needed for Safe Mode and advanced features. Supports Windows 8, 10, and 11.
