# PowerMenu 

### Your all-in-one reboot, shutdown, and Safe Mode launcher for Windows ⚡

<p align="left" style="display: flex; flex-direction: column; gap: 4px; align-items: start;">
  <img src="https://img.shields.io/badge/Platform-Windows-007ec6?logo=windows&logoColor=white&style=flat">
  <img src="https://img.shields.io/badge/Language-AutoIt-007ec6?style=flat" alt="Language: AutoIt">
  <img src="https://img.shields.io/github/license/HazemTech365/PowerMenu?label=License&color=007ec6&style=flat">
  <img src="https://img.shields.io/github/downloads/HazemTech365/PowerMenu/total?label=Downloads&logo=github&color=007ec6&style=flat">
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
- [📦 Download](#-download)  
- [🛠 Troubleshooting](#-troubleshooting)  
- [🧾 Latest Versions](#-latest-versions)  
- [🪪 License](#-license)  
- [👤 Author](#-author)  
- [🤝 Contributing](#-contributing)  
- [🌟 Support This Project](#-support-this-project)  
- [🏁 Final Words](#-final-words)

---

## 🚀 Features  

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

**Main Menu**  
![Main Menu](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)  

**Confirmation Prompt**  
![Confirmation Prompt](https://github.com/HazemTech365/PowerMenu/blob/2bfb9c3ac9424164a22f6148be65656d942374c6/Confirmation.png?raw=true)

---

<a name="keyboard-shortcuts"></a>

## ⌨️ Keyboard Shortcuts

| Shortcut            | Action                             |
|---------------------|-------------------------------------|
| `Ctrl + Shift + C`  | Toggle confirmation prompts on/off |

---

## 💻 Command Table

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

- Windows 11, 10 and 8 
- UEFI support *(required for firmware settings reboot)*

---

## 📦 Download

[![Download PowerMenu](https://img.shields.io/badge/GitHub-Download_PowerMenu-blue?logo=github)](https://github.com/HazemTech365/PowerMenu/releases)

Or clone this repository manually:

```bash
git clone https://github.com/HazemTech365/PowerMenu.git
```

After cloning or visiting the [Releases page](https://github.com/HazemTech365/PowerMenu/releases), just:

> 🖱️ Download either `PowerMenu_x64.exe` *(for 64-bit)* or `PowerMenu_x86.exe` *(for 32-bit)*, then **double-click to launch.**  
> ✅ Click “Yes” if prompted — and your PowerMenu will open instantly, no installation required.

---

## 🛠 Troubleshooting

Having issues? Here are some quick fixes:

- ⚙️ **Safe Mode options not working?**  
  > Make sure you're running PowerMenu with **Administrator privileges** to allow boot-level changes like entering Safe Mode.  
  > Right-click → “Run as administrator”.

- ⚡ **Shutdown or Restart doesn’t happen right away?**  
  > If **Fast Startup** is enabled, Windows might delay or override shutdown commands.  
  > Disable it via:  
  > *Control Panel → Power Options → Choose what the power buttons do → Change settings that are currently unavailable → Uncheck "Turn on fast startup"*

- 🌀 **Stuck in Safe Mode after reboot?**  
  > Don’t worry — **PowerMenu auto-detects Safe Mode** and will prompt you to exit it automatically when you launch the app.  
  > No manual command needed — just open PowerMenu and reboot normally.

- 🧪 **Still stuck manually?**  
  > Open **Command Prompt as Administrator** and run:  
  > `bcdedit /deletevalue {current} safeboot`

---

## 🧾 Latest Versions

The current **latest versions** are:

<a href="https://github.com/HazemTech365/PowerMenu/releases/latest" style="text-decoration:none;">
  <img src="https://img.shields.io/github/v/release/HazemTech365/PowerMenu?label=Latest%20stable%20version&logo=github&color=007ec6&style=flat" 
       alt="Latest stable version badge"
       style="transition: transform 0.3s ease; cursor:pointer;"
       onmouseover="this.style.transform='scale(1.05)';"
       onmouseout="this.style.transform='scale(1)';" />
</a>
<br>
<a href="https://github.com/HazemTech365/PowerMenu/releases" style="text-decoration:none;">
  <img src="https://img.shields.io/github/v/release/HazemTech365/PowerMenu?include_prereleases&label=Latest%20beta%20version&logo=github&color=007ec6&style=flat"
       alt="Latest beta version badge"
       style="transition: transform 0.3s ease; cursor:pointer;"
       onmouseover="this.style.transform='scale(1.05)';"
       onmouseout="this.style.transform='scale(1)';" />
</a>

> ℹ️ *If no beta version is published yet, the badge might show the latest stable version instead.*

Click the badges to view changelogs, new features, or grab an older version! 🚀

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

Contributions, suggestions, and pull requests are welcome!

If you'd like to help improve PowerMenu:
- Fork this repo
- Make your changes
- Submit a pull request

> 💡 Have feedback, found a bug, or got an idea? [Open an issue](https://github.com/HazemTech365/PowerMenu/issues/new) and let’s make it better together!

Together, we can make PowerMenu even more powerful 💪

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

If you enjoy using PowerMenu or find it helpful:

- 🌟 Give it a **star** to show your support  
- 🍴 Fork it to start contributing or customizing  
- 📣 Share it with others — help more people stay in control  

PowerMenu is proudly open-source and powered by the community.  
Let’s make it even better — together 💪

---

## 🏁 Final Words

PowerMenu started as a small idea, but it's made with love, care, and real tech spirit.  
Whether you're a power user or someone who just wants control — this tool is for you.

🧠 Share it, fork it, improve it — it’s open to everyone.

Thanks for checking it out. And remember:

> <p align="center"><strong>🔥 Stay powered, stay in control. PowerMenu. 🔥</strong></p>
