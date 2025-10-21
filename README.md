

<img src="https://github.com/HazemTech365/PowerMenu/blob/7f20d860ded1f8420b3fe1378af7dee4d2d2879a/powermenu.png?raw=true" width="80" alt="PowerMenu Icon">

# ⚡ PowerMenu

**Take full control of Windows shutdown, restart, Safe Mode, and advanced recovery — all in one lightning-fast menu.**  

<p align="left">
  <img src="https://img.shields.io/badge/Platform-Windows-007ec6?logo=windows&logoColor=white&style=flat">  
  <img src="https://img.shields.io/badge/Language-AutoIt-007ec6?style=flat">  
  <img src="https://img.shields.io/github/license/HazemTech365/PowerMenu?label=License&color=007ec6&style=flat">  
  <img src="https://img.shields.io/github/downloads/HazemTech365/PowerMenu/total?label=Downloads&logo=github&color=007ec6&style=flat">  
  <img src="https://img.shields.io/github/repo-size/HazemTech365/PowerMenu?label=Repo%20Size&color=007ec6&style=flat">  
  <img src="https://img.shields.io/github/issues-pr/HazemTech365/PowerMenu?label=Open%20PRs&color=blue">  
</p>

---

## 🎬 Demo

[![Watch PowerMenu Demo](https://img.youtube.com/vi/zWv_q7QPIGY/0.jpg)](https://youtu.be/zWv_q7QPIGY)

---

## 🚀 Features

- 🔌 Shutdown, Restart, Sleep, Hibernate, Log Off  
- 🔐 Lock Screen  
- 🛑 Force Shutdown & Force Restart  
- 🔁 Restart Windows Explorer  
- ⚙️ Reboot to UEFI Firmware Settings *(UEFI only)*  
- 🛠 Reboot to Advanced Recovery  
- 🧰 Safe Mode Tools:  
  - Minimal (Safe Mode)  
  - Networking (Safe Mode with Networking)  
  - Command Prompt (Safe Mode with Command Prompt)  
  - Exit Safe Mode *(auto-detected if already in Safe Mode)*  

> ⚠️ Admin rights are required for Safe Mode and advanced options.

---

## 🏁 Quick Start

1. Download `PowerMenu_x64.exe` (or `PowerMenu_x86.exe` for 32-bit)  
2. Right-click → **Run as Administrator**  
3. Boom — all power options instantly at your fingertips ⚡  

> Tip: Pin PowerMenu to the Taskbar or Start Menu for instant access.

---

## 🖼 Screenshots

**Main Menu**  
![Main Menu](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)  

**Confirmation Prompt**  
![Confirmation Prompt](https://github.com/HazemTech365/PowerMenu/blob/2bfb9c3ac9424164a22f6148be65656d942374c6/Confirmation.png?raw=true)

**Icon**  
<img src="https://github.com/HazemTech365/PowerMenu/blob/7f20d860ded1f8420b3fe1378af7dee4d2d2879a/powermenu.png?raw=true" width="120" alt="Icon">

---

## ⌨️ Keyboard Shortcuts

| Shortcut            | Action                             |
|--------------------|-------------------------------------|
| `Ctrl + Shift + C`  | Toggle confirmation prompts on/off |

---

## 📟 Command Table

| Button                   | Command                                                    | Notes |
|--------------------------|-------------------------------------------------------------|-------|
| Shutdown                 | `shutdown /s /t 0`                                          | — |
| Restart                  | `shutdown /r /t 0`                                          | — |
| Sleep                    | `rundll32.exe powrprof.dll,SetSuspendState 0,1,0`          | — |
| Lock                     | `rundll32.exe user32.dll,LockWorkStation`                  | — |
| Log Off                  | `shutdown /l`                                               | — |
| Hibernate                | `shutdown /h`                                               | — |
| Force Shutdown           | `shutdown /s /f /t 0`                                       | — |
| Force Restart            | `shutdown /r /f /t 0`                                       | — |
| Restart Explorer         | `taskkill /f /im explorer.exe && start explorer`            | — |
| UEFI Firmware Settings   | `shutdown /r /fw /t 0`                                      | UEFI only |
| Advanced Recovery        | `shutdown /r /o /t 0`                                       | Admin required |
| Safe Mode: Minimal       | `bcdedit /set {current} safeboot minimal`                   | Admin required |
| Safe Mode: Networking    | `bcdedit /set {current} safeboot network`                   | Admin required |
| Safe Mode: Command Prompt| `bcdedit /set {current} safebootalternateshell yes`         | Admin required |
| Exit Safe Mode           | `bcdedit /deletevalue {current} safeboot`                   | Admin required |

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

> ✅ No installation required — just double-click the `.exe` and run as Admin.

---

## 🛠 Troubleshooting

- **Safe Mode not working?** Run as Administrator.  
- **Shutdown/Restart delayed?** Disable Fast Startup:  
  `Control Panel → Power Options → Choose what the power buttons do → Change settings → Uncheck "Turn on fast startup"`  
- **Stuck in Safe Mode?** Open Command Prompt (Admin) and run:  
```bash
bcdedit /deletevalue {current} safeboot
```

---

## ⚠️ Known Issues

- UEFI required for full features  
- Admin rights needed  
- Windows-only  
- Possible antivirus false positives (AutoIt behavior)  
- UI scaling issues on high DPI displays  

---

## 🛡️ Security Notice

- Open-source, no telemetry, no ads  
- SHA-256: `c9c3915c3df172c680e482c406bfcb90f4361a0995dec51dafcf78a4fb4fc584`  
- [VirusTotal scan](https://www.virustotal.com/gui/file/c9c3915c3df172c680e482c406bfcb90f4361a0995dec51dafcf78a4fb4fc584/detection)  

---

## ❓ FAQ

<details>
<summary>Q: Why do I need admin rights?</summary>
<p>Changing Safe Mode and advanced reboot settings requires system-level permissions.</p>
</details>

<details>
<summary>Q: Can I use this on Windows 7?</summary>
<p>Not officially supported. Some features may be missing.</p>
</details>

<details>
<summary>Q: Can I customize the UI?</summary>
<p>Not yet. UI customization may come in future releases.</p>
</details>

<details>
<summary>Q: Is installation required?</summary>
<p>Nope! Portable — just run the `.exe`.</p>
</details>

---

## 👨‍💻 Coming Soon

- 🎛️ Options Menu: toggle confirmation prompts  
- 🎭 Themes (Classic, Dark, more)  
- 💻 CLI Mode toggle  
- 🛠 Auto-Updater (admin mode auto-update)  
- 🌐 Multi-language support (English, Arabic, more)  

---

## 🔧 Build from Source

1. Install [AutoIt v3](https://www.autoitscript.com/site/autoit/downloads/) (3.3.14.5+)  
2. Optional: [SciTE4AutoIt3](https://www.autoitscript.com/site/autoit-tools/scite4autoit3/)  
3. Clone repo:  
````bash
git clone https://github.com/HazemTech365/PowerMenu.git
````  
4. Open `PowerMenu.au3` → F7 to compile  
5. Run `PowerMenu.exe`  

---

## 🪪 License

MIT License © 2025 Hazem Mohamed  

[See full text above](#license)

---

## 🌟 Support This Project

- ⭐ Star it  
- 🍴 Fork it  
- 🗣 Share it  

---

## ⚡ TL;DR

PowerMenu = **shutdown, restart, sleep, hibernate, Safe Mode, advanced reboot** — all in a tiny portable app.  
Admin rights required for Safe Mode & advanced features.  
Windows 8, 10, 11 supported.  

> 🔥 Stay powered. Stay in control. PowerMenu. 🔥