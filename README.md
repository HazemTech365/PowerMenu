# PowerMenu

<!-- 🔥 Ultimate Placeholder Video -->  <iframe width="560" height="315" src="https://www.youtube.com/embed/dQw4w9WgXcQ?autoplay=1&mute=1"   
title="Definitely a Totally Serious Placeholder Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>  
</iframe>
### Your all-in-one reboot, shutdown, and Safe Mode launcher for Windows ⚡

<p align="left">
  <img src="https://img.shields.io/badge/Platform-Windows-007ec6?logo=windows&logoColor=white&style=flat">
  <img src="https://img.shields.io/badge/Language-AutoIt-007ec6?style=flat">
  <img src="https://img.shields.io/github/license/HazemTech365/PowerMenu?label=License&color=007ec6&style=flat">
  <img src="https://img.shields.io/github/downloads/HazemTech365/PowerMenu/total?label=Downloads&logo=github&color=007ec6&style=flat">
  <img src="https://img.shields.io/github/repo-size/HazemTech365/PowerMenu?label=Repo%20Size&color=007ec6&style=flat">
<img src="https://img.shields.io/badge/Author-HazemTech365-blueviolet" alt="Author: HazemTech365">
  <img src="https://img.shields.io/badge/Coming%20Soon-Features%20Planned-orange?style=flat&logo=github">
<img src="https://img.shields.io/github/issues-pr/HazemTech365/PowerMenu?label=Open%20PRs&color=blue">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/HazemTech365/PowerMenu/4c574d093cea6d4e1f6b031536e30a7586f2e887/longpowermenu.png" alt="PowerMenu Screenshot" width="200" />
</p>

PowerMenu is a modern, lightweight utility that puts **all essential power controls** at your fingertips. Built for Windows, it delivers powerful options in one clean interface — whether you're shutting down, restarting, hibernating, or jumping into Safe Mode.  

---

<p align="center">
  Made with 💻 by <a href="https://github.com/HazemTech365">HazemTech365</a>
</p>

---

![PowerMenu Screenshot](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)
---

## 📚 Table of Contents

- [🚀 Features](#-features)
- [🏁 Quick start](#-quick-start)
- [🖼 Screenshots](#-screenshots)
- [⌨️ Keyboard Shortcuts](#shortcuts)
- [📟 Command Table](#-command-table)
- [💻 System Requirements](#-system-requirements)
- [📥 Download](#-download)
- [🛠 Troubleshooting](#-troubleshooting)
- [⚠️ Known Issues & Limitations](#known-issues)
- [🛡️ Security Notice](#security)
- [❓ FAQ](#-faq)
- [🧾 Latest Versions](#-latest-versions)
- [👨‍💻 Coming Soon](#-coming-soon)
- [🔧 Build From Source](#-build-from-source)
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

> ⚠️ If PowerMenu detects you're in Safe Mode, it'll prompt you to reboot and exit automatically.

---

## 🏁 Quick Start
1. Download `PowerMenu_x64.exe`
2. Right-click → Run as Administrator
3. Boom — power options galore ⚡

---

## 🖼 Screenshots  

![Screenshot Badge](https://img.shields.io/badge/UI-Simple_&_Clean-007ec6?style=flat)

**Video:**
[![Watch PowerMenu Demo](https://img.youtube.com/vi/zWv_q7QPIGY/0.jpg)](https://youtu.be/zWv_q7QPIGY)

**Icon**
<p align="center">
  <img src="https://raw.githubusercontent.com/HazemTech365/PowerMenu/4c574d093cea6d4e1f6b031536e30a7586f2e887/longpowermenu.png" alt="PowerMenu Screenshot" width="200" />
</p>

**Main Menu**  
![Main Menu](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)  

**Confirmation Prompt**  
![Confirmation Prompt](https://github.com/HazemTech365/PowerMenu/blob/2bfb9c3ac9424164a22f6148be65656d942374c6/Confirmation.png?raw=true)

---

<div id="shortcuts"></div>

## ⌨️ Keyboard Shortcuts 
 
![Shortcuts Badge](https://img.shields.io/badge/Shortcut-Ctrl+Shift+C-007ec6?style=flat)

| Shortcut            | Action                             |
|---------------------|-------------------------------------|
| `Ctrl + Shift + C`  | Toggle confirmation prompts on/off |

---

## 📟 Command Table  

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

<div id="known-issues"></div>

## ⚠️ Known Issues & Limitations

<img src="https://img.shields.io/badge/Known%20Issues-Yes-critical" alt="Known Issues">

> These are not user-reported bugs, but important things to be aware of:

- **UEFI Required for Full Features:** Some settings and options may be unavailable on systems using Legacy BIOS. UEFI is strongly recommended.

- **Administrator Rights Needed:** The app may fail to function properly if not run as Administrator. For best results, right-click and choose **"Run as administrator"**.

- **Windows-Only (For Now):** This tool is currently built for Windows systems only. Support for Linux/macOS may come later.

- **Antivirus False Positives:** Some antivirus programs may flag the executable due to its use of system-level commands. Rest assured, the tool is clean.


- **Display Scaling Issues:** On some systems with custom DPI settings, UI elements may not appear properly scaled. A fix is planned for a future version.

This list will expand as we discover more edge cases or system-specific quirks.

---

<div id="security"></div>

## 🛡️ Security Notice

This tool is open source and does **not** include telemetry, tracking, or ads.

VirusTotal link: 

However, always exercise caution when downloading binaries from third-party sites. It is strongly recommended to:
- Download only from the official GitHub repository or trusted mirrors.
- Verify the SHA256 hash of the release files (if provided).
- Avoid running scripts with elevated privileges unless you trust the source.

> 📣 If you find any suspicious behavior, please [open an issue](#) immediately or contact the developer.

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

**Q: Is this safe to run? Why does my antivirus warn me?**  
A: PowerMenu is 100% clean and open-source. Some antivirus tools may flag AutoIt EXEs due to how they interact with system commands. You can always inspect the code or build from source.

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

## 👨‍💻 Coming Soon

<img src="https://img.shields.io/badge/Coming_Soon-in_progress-orange?style=flat">

- 🎛️ **New Options Menu**: Toggle confirmation prompts on/off (shortcuts like `Ctrl + Shift + C` will always work independently).  
- ❓ **New Help Menu** including:  
  - About section (Shortcut: `Ctrl+Shift+A`) 
  - Help documentation (`powermenu.chm`) included in a future `.zip` package (Shortcut: `Ctrl+Shift+H`)  
- 🎭 **Themes Menu** coming soon inside the Options Menu, featuring:  
  - **Classic Mode** theme in the next release  
  - Additional themes including **Dark Mode** coming soon  
- 💻 **CLI Mode** toggle added in Options for command line control.
- **🛠️ Auto-Updater System**  
  Seamlessly checks for the latest version of the tool from GitHub.  
  If an update is found:
  - Prompts the user to update
  - Automatically downloads the updated EXE
  - Closes the current app
  - Reopens the new version — **in administrator mode**, like a pro! 😎  
  All without manual effort. Just pure automation magic.✨
- **🌐 Multi-language Support**  
  Interface translation for a global audience!  
  Switch between languages with ease — English, Arabic, and more to come!  
  Get ready for **multilingual** support.

---

## 🔧 Build from Source

To build **PowerMenu** from source, follow these steps:

1. **Prerequisites:**
   - Install [AutoIt v3](https://www.autoitscript.com/site/autoit/downloads/) (version 3.3.14.5 or later recommended).
   - Optional but recommended: Install [SciTE4AutoIt3](https://www.autoitscript.com/site/autoit-tools/scite4autoit3/) for a powerful AutoIt IDE and editor.
   - Ensure you have a Windows development environment (Windows 10/11 recommended).

2. **Clone the Repository:**
    
        git clone https://github.com/YourUsername/PowerMenu.git
        cd PowerMenu

3. **Compile the Script:**
   - Open `PowerMenu.au3` in SciTE4AutoIt3 or your preferred editor.
   - Press **F7** (Compile Script) to build the executable.
   - Alternatively, you can use the command line AutoIt compiler:
    
        "C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe" /in PowerMenu.au3 /out PowerMenu.exe

   - The compiled executable `PowerMenu.exe` will be generated in the project directory.

4. **Verify the Build:**
   - Run `PowerMenu.exe` and ensure all features (shutdown, reboot, Safe Mode options) function as expected.

5. **Customization:**
   - Modify `PowerMenu.au3` source code to tweak features or add custom options.
   - Recompile after changes to apply updates.

6. **Distributing your Build:**
   - Include any necessary assets or configuration files along with the executable.
   - Make sure to comply with the original license and give proper credit.

---

## 🪪 License

<img src="https://img.shields.io/github/license/HazemTech365/PowerMenu?label=License&color=007ec6&style=flat">

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

<img src="https://img.shields.io/badge/Author-HazemTech365-blueviolet" alt="Author: HazemTech365">

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
    <img src="https://img.shields.io/github/stars/HazemTech365/PowerMenu?style=flat&logo=github&label=Stars&color=007ec6" alt="GitHub Stars" />
  </a><br>
  <a href="https://github.com/HazemTech365/PowerMenu/network/members">
    <img src="https://img.shields.io/github/forks/HazemTech365/PowerMenu?style=flat&logo=github&label=Forks&color=007ec6" alt="GitHub Forks" />
  </a><br>
  <a href="https://github.com/HazemTech365/PowerMenu/issues">
    <img src="https://img.shields.io/github/issues/HazemTech365/PowerMenu?style=flat&logo=github&label=Issues&color=007ec6" alt="GitHub Issues" />
  </a><br>
  <a href="https://github.com/HazemTech365/PowerMenu/watchers">
    <img src="https://img.shields.io/github/watchers/HazemTech365/PowerMenu?style=flat&logo=eye&label=Watchers&color=007ec6" alt="GitHub Watchers" />
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

<img src="https://img.shields.io/badge/Final Words-Tech%20Heart%20%26%20Power-orange?style=flat" alt="Final Words Badge">

PowerMenu started as a small idea, but it's made with love, care, and real tech spirit.  
Whether you're a power user or someone who just wants control — this tool is for you.

🧠 Share it, fork it, improve it — it’s open to everyone.

Thanks for checking it out. And remember:

> <p align="center"><strong>🔥 Stay powered, stay in control. PowerMenu. 🔥</strong></p>
