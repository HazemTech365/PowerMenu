# PowerMenu 

### Your all-in-one reboot, shutdown, and Safe Mode launcher for Windows ⚡

<p align="left" style="display: flex; flex-direction: column; gap: 4px; align-items: start;">
  <img src="https://img.shields.io/badge/Platform-Windows-007ec6?logo=windows&logoColor=white&style=flat">
  <img src="https://img.shields.io/badge/Language-AutoIt-007ec6?style=flat" alt="Language: AutoIt">
  <img src="https://img.shields.io/github/license/HazemTech365/PowerMenu?label=License&color=007ec6&style=flat">
  <img src="https://img.shields.io/github/downloads/HazemTech365/PowerMenu/total?label=Downloads&logo=github&color=007ec6&style=flat">
  <img src="https://img.shields.io/github/repo-size/HazemTech365/PowerMenu?label=Repo%20Size&color=007ec6&style=flat">
</p>

PowerMenu is a modern and lightweight shutdown utility that puts **every essential power control** at your fingertips. Built for Windows, it delivers powerful options in one clean interface — whether you're shutting down, restarting, hibernating, or jumping into Safe Mode.  

---

<p align="center">
  Made with 💻 by <a href="https://github.com/HazemTech365">HazemTech365</a>
</p>

---

![PowerMenu Screenshot](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)

---

## 📚 Table of Contents

- [🚀 Features](#-features)  
- [🖼 Screenshots](#-screenshots)  
- [⌨️ Keyboard Shortcuts](#keyboard-shortcuts)  
- [💻 Command Table](#-command-table)  
- [💻 System Requirements](#-system-requirements)  
- [📥 Download](#-download)  
- [🛠 Troubleshooting](#-troubleshooting) 
- [❓ FAQ](#-faq) 
- [🧾 Latest Versions](#-latest-versions)
- [🚧 Coming Soon](#-coming-soon)  
- [🪪 License](#-license)  
- [👤 Author](#-author)  
- [🤝 Contributing](#-contributing)  
- [🌟 Support This Project](#-support-this-project)  
- [⚡ TL;DR](#-tldr)  
- [🏁 Final Words](#-final-words)

---

## 🚀 Features  
![Features Badge](https://img.shields.io/badge/Modes-Safe_Mode_&_Advanced_Recovery-007ec6?style=flat)

- 🔌 Shutdown, Restart, Sleep, Hibernate, Log Off  
- 🔐 Lock Screen  
- 🛑 Force Shutdown & Force Restart  
- 🔁 Restart Windows Explorer  
- ⚙️ Reboot to UEFI Firmware Settings *(if supported)*  
- 🛠 Reboot to Advanced Recovery  
- 🧰 Safe Mode Tools:  
  - Minimal (Safe Mode)  
  - Networking (Safe Mode with Networking)  
  - Command Prompt (Safe Mode with Command Prompt)  
  - Exit Safe Mode *(auto-detected if already in Safe Mode)*  

> ⚠️ If PowerMenu detects Safe Mode, it **will require a reboot** to exit it.

---

## 🖼 Screenshots  
![Screenshot Badge](https://img.shields.io/badge/UI-Simple_&_Clean-007ec6?style=flat)

**Main Menu**  
![Main Menu](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)  

**Confirmation Prompt**  
![Confirmation Prompt](https://github.com/HazemTech365/PowerMenu/blob/2bfb9c3ac9424164a22f6148be65656d942374c6/Confirmation.png?raw=true)

---

<a name="keyboard-shortcuts"></a>

## ⌨️ Keyboard Shortcuts  
![Shortcuts Badge](https://img.shields.io/badge/Shortcut-Ctrl+Shift+C-007ec6?style=flat)

| Shortcut            | Action                             |
|---------------------|-------------------------------------|
| `Ctrl + Shift + C`  | Toggle confirmation prompts on/off |

---

## 💻 Command Table  
![Command Badge](https://img.shields.io/badge/Execution-Safe_&_Admin_Commands-007ec6?style=flat)

> ℹ️ You don't have to use these manually — PowerMenu runs them for you behind the scenes!

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

---

## 💻 System Requirements  
[![Windows 11](https://custom-icon-badges.demolab.com/badge/Windows%2011-0078D6?logo=windows11&logoColor=white&style=flat&labelColor=0078D6)](https://www.microsoft.com/windows)
[![Windows 10](https://custom-icon-badges.demolab.com/badge/Windows%2010-0078D6?logo=windows11&logoColor=white&style=flat&labelColor=0078D6)](https://www.microsoft.com/windows)
[![Windows 8/8.1](https://custom-icon-badges.demolab.com/badge/Windows%208%2F8.1-yellow?logo=windows11&logoColor=white)](https://www.microsoft.com/windows)

- Windows 11, 10, and 8  
- UEFI support *(required for firmware settings reboot)*  

---

## 📥 Download  
![No Install Badge](https://img.shields.io/badge/Installer-Not_Required-007ec6?style=flat)
<br>
[![Download PowerMenu](https://img.shields.io/badge/GitHub-Download_PowerMenu-blue?logo=github)](https://github.com/HazemTech365/PowerMenu/releases)

Or clone this repository manually:

```bash
git clone https://github.com/HazemTech365/PowerMenu.git
```

> 🖱️ Download either `PowerMenu_x64.exe` *(for 64-bit)* or `PowerMenu_x86.exe` *(for 32-bit)*, then **double-click to launch.**  
> ✅ Click “Yes” if prompted — and your PowerMenu will open instantly, no installation required.

---

## 🛠 Troubleshooting  
![Troubleshooting Badge](https://img.shields.io/badge/Help-Fast_Start_&_Safe_Mode_Tips-007ec6?style=flat)

Having issues? Here are some quick fixes:

- ⚙️ **Safe Mode options not working?**  
  > Make sure you're running PowerMenu with **Administrator privileges**.  
  > Right-click → “Run as administrator”.

- ⚡ **Shutdown or Restart doesn’t happen right away?**  
  > If **Fast Startup** is enabled, Windows might delay shutdown commands.  
  > Disable it via:  
  > *Control Panel → Power Options → Choose what the power buttons do → Change settings that are currently unavailable → Uncheck "Turn on fast startup"*

- 🌀 **Stuck in Safe Mode after reboot?**  
  > PowerMenu auto-detects Safe Mode and will prompt to exit it. Just reopen the app and reboot.

- 🧪 **Still stuck manually?**  
  > Open **Command Prompt as Administrator** and run:  
  > `bcdedit /deletevalue {current} safeboot`

---

## ❓ FAQ

![FAQ Badge](https://img.shields.io/badge/FAQ-Questions-007ec6?style=flat)

**Q: Why do I need to run PowerMenu as Administrator for Safe Mode?**  
A: Changing Safe Mode settings requires system-level permissions, so admin rights are necessary for those commands to work.

**Q: Does PowerMenu support Windows 7?**  
A: PowerMenu is tested and confirmed on Windows 8, 10, and 11. Windows 7 support isn’t officially guaranteed — it might work, but some features could be missing or behave unexpectedly.

**Q: Can I customize the PowerMenu UI?**  
A: Currently, PowerMenu uses a fixed clean interface. UI customization might be added in future releases.

**Q: Is installation required?**  
A: Nope! PowerMenu is portable — just download and run the `.exe`. No install needed.

---

## 🧾 Latest Versions  
![Version Badge](https://img.shields.io/github/v/release/HazemTech365/PowerMenu?label=Stable%20Release&color=007ec6)

The current **latest versions** are:

<a href="https://github.com/HazemTech365/PowerMenu/releases/latest">
  <img src="https://img.shields.io/github/v/release/HazemTech365/PowerMenu?label=Latest%20stable%20version&logo=github&color=007ec6&style=flat" />
</a><br>
<a href="https://github.com/HazemTech365/PowerMenu/releases">
  <img src="https://img.shields.io/github/v/release/HazemTech365/PowerMenu?include_prereleases&label=Latest%20beta%20version&logo=github&color=007ec6&style=flat" />
</a>

> ℹ️ _If no beta version is published yet, the badge will display the last stable version._

---

## 🚧 Coming Soon

- 🎛️ **New Options Menu**: Toggle confirmation prompts on/off (shortcuts like `Ctrl + Shift + C` will always work independently).  
- ❓ **New Help Menu** including:  
  - About section (Shortcut: `Ctrl+Shift+A`) 
  - Help documentation (`powermenu.chm`) included in a future `.zip` package (Shortcut: `Ctrl+Shift+H`)  
- 🎭 **Themes Menu** coming soon inside the Options Menu, featuring:  
  - **Classic Mode** theme in the next release  
  - Additional themes including **Dark Mode** coming soon  
- 💻 **CLI Mode** toggle added in Options for command line control.

---

## 🪪 License

This project is licensed under the **MIT License**.

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

## 👤 Author

Developed and maintained by:

**HazemTech365**  
🔗 [GitHub Profile](https://github.com/HazemTech365)

---

## 🤝 Contributing  
![Contribute Badge](https://img.shields.io/badge/PRs-Welcome-007ec6?style=flat)

Contributions, suggestions, and pull requests are welcome!

If you'd like to help improve PowerMenu:
- Fork this repo
- Make your changes
- Submit a pull request

> 💡 [Open an issue](https://github.com/HazemTech365/PowerMenu/issues/new) if you have feedback or ideas!

---

## 🌟 Support This Project

<p>
  <a href="https://github.com/HazemTech365/PowerMenu/stargazers">
    <img src="https://img.shields.io/github/stars/HazemTech365/PowerMenu?style=flat&logo=github&label=Stars&color=007ec6">
  </a><br>
  <a href="https://github.com/HazemTech365/PowerMenu/network/members">
    <img src="https://img.shields.io/github/forks/HazemTech365/PowerMenu?style=flat&logo=github&label=Forks&color=007ec6">
  </a><br>
  <a href="https://github.com/HazemTech365/PowerMenu/issues">
    <img src="https://img.shields.io/github/issues/HazemTech365/PowerMenu?style=flat&logo=github&label=Issues&color=007ec6">
  </a>
</p>

If you enjoy using PowerMenu:

- 🌟 Star it  
- 🍴 Fork it  
- 🗣 Share it

PowerMenu is powered by community ❤️ Let's keep it going.

---

## ⚡ TL;DR

PowerMenu is your **lightweight Windows power utility** that puts shutdown, restart, sleep, hibernate, Safe Mode, and advanced reboot options all in one sleek app — no install needed.  
Run it, choose your action, done. Perfect for power users who want **full control without the hassle**.  
Works on Windows 8, 10, and 11.  
Admin rights required for Safe Mode and advanced features.  
Download on GitHub and stay powered! 🚀

---

## 🏁 Final Words

PowerMenu started as a small idea, but it's made with love, care, and real tech spirit.  
Whether you're a power user or someone who just wants control — this tool is for you.

🧠 Share it, fork it, improve it — it’s open to everyone.

Thanks for checking it out. And remember:

> <p align="center"><strong>🔥 Stay powered, stay in control. PowerMenu. 🔥</strong></p>
