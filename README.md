<img src="https://github.com/HazemTech365/PowerMenu/blob/7f20d860ded1f8420b3fe1378af7dee4d2d2879a/powermenu.png?raw=true" width="80" alt="PowerMenu Icon">

# PowerMenu

**Take full control of Windows shutdown, restart, Safe Mode, and advanced recovery — all in one lightning-fast menu.**  

<p align="left">
  <img src="https://img.shields.io/badge/Platform-Windows-007ec6?logo=windows&logoColor=white&style=flat">  
  <img src="https://img.shields.io/badge/Language-AutoIt-007ec6?style=flat">  
  <img src="https://img.shields.io/github/license/HazemTech365/PowerMenu?label=License&color=007ec6&style=flat">  
  <img src="https://img.shields.io/github/downloads/HazemTech365/PowerMenu/total?label=Downloads&logo=github&color=007ec6&style=flat">  
</p>

---

## 🎬 Demo

[![Watch PowerMenu Demo](https://img.youtube.com/vi/zWv_q7QPIGY/0.jpg)](https://youtu.be/zWv_q7QPIGY)

---

## 🏁 Quick Start

1. Download `PowerMenu_x64.exe` (or `PowerMenu_x86.exe` for 32-bit)  
2. Right-click → **Run as Administrator**  
3. Enjoy full access to all power options instantly ⚡  

> Tip: Pin PowerMenu to Taskbar or Start Menu for instant access.

---

## 🚀 Features

- 🔌 Shutdown, Restart, Sleep, Hibernate, Log Off  
- 🔐 Lock Screen  
- 🛑 Force Shutdown & Force Restart  
- 🔁 Restart Windows Explorer  
- ⚙️ Reboot to UEFI Firmware Settings *(UEFI only)*  
- 🛠 Reboot to Advanced Recovery  
- 🧰 Safe Mode Tools:  

<details>
<summary>Safe Mode Options</summary>

- Minimal (Safe Mode)  
- Networking (Safe Mode with Networking)  
- Command Prompt (Safe Mode with Command Prompt)  
- Exit Safe Mode *(auto-detected if already in Safe Mode)*  

> Admin rights required for Safe Mode and advanced options.

</details>

---

## 🖼 Screenshots

**Icon**  
<img src="https://github.com/HazemTech365/PowerMenu/blob/7f20d860ded1f8420b3fe1378af7dee4d2d2879a/powermenu.png?raw=true" width="150" alt="Icon">

**Main Menu**  
![Main Menu](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)  

**Confirmation Prompt**  
![Confirmation Prompt](https://github.com/HazemTech365/PowerMenu/blob/2bfb9c3ac9424164a22f6148be65656d942374c6/Confirmation.png?raw=true)

---

## 📟 Command Table

| Button                   | Command                                                    |
|--------------------------|-------------------------------------------------------------|
| Shutdown                 | `shutdown /s /t 0`                                          |
| Restart                  | `shutdown /r /t 0`                                          |
| Sleep                    | `rundll32.exe powrprof.dll,SetSuspendState 0,1,0`          |
| Lock                     | `rundll32.exe user32.dll,LockWorkStation`                  |
| Log Off                  | `shutdown /l`                                               |
| Hibernate                | `shutdown /h`                                               |
| Force Shutdown           | `shutdown /s /f /t 0`                                       |
| Force Restart            | `shutdown /r /f /t 0`                                       |
| Restart Explorer         | `taskkill /f /im explorer.exe && start explorer`            |
| UEFI Firmware Settings   | `shutdown /r /fw /t 0`                                      |
| Advanced Recovery        | `shutdown /r /o /t 0`                                       |
| Safe Mode: Minimal       | `bcdedit /set {current} safeboot minimal`                   |
| Safe Mode: Networking    | `bcdedit /set {current} safeboot network`                   |
| Safe Mode: Command Prompt| `bcdedit /set {current} safebootalternateshell yes`         |
| Exit Safe Mode           | `bcdedit /deletevalue {current} safeboot`                   |

<details>
<summary>Command Notes / Examples</summary>

- `Force Shutdown` forcibly closes apps without waiting for prompts  
- `Restart Explorer` can fix taskbar or desktop issues  
- `Exit Safe Mode` automatically removes safeboot if the system is in Safe Mode

</details>

---

## 💻 System Requirements

- Windows 11, 10, or 8  
- UEFI recommended for firmware options  
- Admin rights for Safe Mode and advanced reboot options  

---

## 📥 Download

[![Download PowerMenu](https://img.shields.io/badge/GitHub-Download_PowerMenu-blue?logo=github)](https://github.com/HazemTech365/PowerMenu/releases)

Or clone the repository manually:

```bash
git clone https://github.com/HazemTech365/PowerMenu.git
```

> ✅ No installation required — just run the `.exe` as Admin.

---

## 🛠 Troubleshooting

- **Safe Mode not working?** Run as Administrator.  
- **Shutdown/Restart delayed?** Disable Fast Startup:  
<details>
<summary>Fast Startup Disable Steps</summary>

`Control Panel → Power Options → Choose what the power buttons do → Change settings → Uncheck "Turn on fast startup"`

</details>

- **Stuck in Safe Mode?** Open Command Prompt (Admin) and run:  
<details>
<summary>Exit Safe Mode Command</summary>

```bash
bcdedit /deletevalue {current} safeboot
```

</details>

---

## ⚠️ Known Issues

- UEFI required for full features  
- Admin rights needed  
- Windows-only  
- Possible antivirus false positives (AutoIt behavior)  
- UI scaling issues on high DPI displays  

<details>
<summary>Antivirus Notes</summary>

Some antivirus programs flag AutoIt scripts as suspicious due to system commands. The tool is clean. You can verify via SHA-256 or build from source.

</details>

---

## ❓ FAQ

<details>
<summary>Why admin rights?</summary>
Changing Safe Mode and advanced reboot requires system-level permissions.
</details>

<details>
<summary>Can I use Windows 7?</summary>
Not officially supported; some features may not work.
</details>

<details>
<summary>Installation required?</summary>
No, it’s portable — just run the `.exe`.
</details>

<details>
<summary>Future UI Customization</summary>
UI customization may be added in future releases. Currently the interface is fixed for simplicity.
</details>

---

## 👨‍💻 Coming Soon

<details>
<summary>Feature Details</summary>

- Options Menu: toggle confirmation prompts  
- Themes (Classic, Dark, more)  
- CLI Mode toggle  
- Auto-Updater (admin mode auto-update)  
- Multi-language support  

</details>

---

## 🔧 Build from Source

<details>
<summary>Steps</summary>

1. Install [AutoIt v3](https://www.autoitscript.com/site/autoit/downloads/) (3.3.14.5+)  
2. Optional: [SciTE4AutoIt3](https://www.autoitscript.com/site/autoit-tools/scite4autoit3/)  
3. Clone repo:  
```bash
git clone https://github.com/HazemTech365/PowerMenu.git
```
4. Open `PowerMenu.au3` → F7 to compile  
5. Run `PowerMenu.exe`  

</details>

---

## 🪪 License

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

## ⚡ TL;DR

PowerMenu = **shutdown, restart, sleep, hibernate, Safe Mode, advanced reboot** — all in a tiny portable app.  
Admin rights required for Safe Mode & advanced features.  
Windows 8, 10, 11 supported.  

> 🔥 Stay powered. Stay in control. PowerMenu. 🔥