# PowerMenu

PowerMenu is a modern shutdown utility that combines all critical power options into one simple and accessible menu. It’s designed to be lightweight and fast on Windows systems.

---

## 🔧 Features

- Shutdown  
- Restart  
- Sleep *(may hibernate depending on your system’s power settings)*  
- Lock  
- Log Off  
- Hibernate  
- Force Shutdown  
- Force Restart  
- Restart Explorer  
- Reboot to UEFI Firmware Settings  
  > ⚠ Only available on systems that support UEFI.  
- Reboot to Advanced Recovery Options  
- Reboot to Safe Mode, with choices:
  - Minimal (Safe Mode)
  - Networking (Safe Mode with Networking)
  - Command Prompt (Safe Mode with Command Prompt)
  - Cancel  

If you are already in Safe Mode, PowerMenu will detect this and ask to **exit Safe Mode** via reboot and BCDEdit reset.  
> There is **no shortcut to disable this Safe Mode cleanup**.

---

## ⌨️ Shortcuts

- **Ctrl + Shift + C** — Toggle confirmation prompts on or off

By default, PowerMenu shows confirmation dialogs for critical actions. This shortcut allows advanced users to enable or disable them quickly.

---

## ⚠ System Requirements

- Windows 10 or Windows 11  
- UEFI support for Firmware Settings  

---

## 📦 Download

[![Download PowerMenu](https://img.shields.io/badge/GitHub-Download_PowerMenu-blue?logo=github)](https://github.com/HazemTech365/PowerMenu/releases/)

Alternatively, you can clone this repository using:

```bash
git clone https://github.com/HazemTech365/PowerMenu.git
```

---

## 👤 Maintained by

**[HazemTech365](https://github.com/HazemTech365)**
