# PowerMenu

PowerMenu is a modern and lightweight shutdown utility that puts **every essential power control** at your fingertips. Built for Windows, it delivers powerful options in one clean interface — whether you're shutting down, restarting, hibernating, or jumping into Safe Mode.

Made with 💻 by [HazemTech365](https://github.com/HazemTech365)

---

![PowerMenu Screenshot](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)

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
> There is no shortcut to bypass Safe Mode cleanup.

---

## 🖼 Screenshots

**Main Menu**  
![Main Menu](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Main.png?raw=true)

**Confirmation Prompt**  
![Confirmation Prompt](https://github.com/HazemTech365/PowerMenu/blob/fb6292d48e802c580f1150823c89fde0957a5182/Confirmaton.png?raw=true)

---

## ⌨️ Keyboard Shortcut

| Shortcut            | Action                             |
|---------------------|-------------------------------------|
| `Ctrl + Shift + C`  | Toggle confirmation prompts on/off |

---

## ⚙ Command Table

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
| Restart Explorer         | `taskkill /f /im explorer.exe && start explorer`           |
| UEFI Firmware Settings   | `shutdown /r /fw /t 0`                                     |
| Advanced Recovery        | `shutdown /r /o /t 0`                                      |
| Safe Mode: Minimal       | `bcdedit /set {current} safeboot minimal`                  |
| Safe Mode: Networking    | `bcdedit /set {current} safeboot network`                  |
| Safe Mode: Command Prompt| `bcdedit /set {current} safebootalternateshell yes`        |
| Exit Safe Mode           | `bcdedit /deletevalue {current} safeboot`                  |

---

## 💻 System Requirements

- Windows 10 or Windows 11  
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

## 🏁 Final Words

PowerMenu started as a small idea, but it's made with love, care, and real tech spirit.  
Whether you're a power user or someone who just wants control — this tool is for you.

🧠 Share it, fork it, improve it — it’s open to everyone.

Thanks for checking it out. And remember:

> **Stay powered, stay in control. PowerMenu.**