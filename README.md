# SAMP-PWN-builder

A pre-configured, lightweight SA-MP (San Andreas Multiplayer) PAWN compilation package maintained and distributed by **Shoriu Foundation**.

This repository provides an out-of-the-box build environment including standard PAWN compiler binaries, default SA-MP include files, and a custom batch builder script.

---

## 📂 Project Structure

```
SAMP-PWN-builder/
│
├── builder.cmd                 # Automated CLI build script
│
├── bin/                        # PAWN Compiler Toolchain
│   ├── pawnc.dll
│   ├── pawncc.exe
│   └── pawndisasm.exe
│
└── samp-files/                 # Workspace Directory
    ├── base.pwn.example        # Example starter gamemode / script
    └── include/                # Standard SA-MP Includes (a_samp, a_players, etc.)
```

---

## 🚀 Quick Start

### 1. Setup Source File

Rename `base.pwn.example` to `base.pwn` inside the `samp-files` directory:

```
Copy-Item .\samp-files\base.pwn.example .\samp-files\base.pwn
```

### 2. Build the Script

Run `builder.cmd` either by double-clicking it or executing it from PowerShell / CMD:

```
.\builder.cmd
```

The script will automatically compile `samp-files\base.pwn` into `samp-files\base.amx` using `bin\pawncc.exe` with `-O1` optimization.

---

## 🛠️ Features

* **Zero-Config Setup:** Pre-linked paths for compiler binaries and SA-MP standard includes.
* **Enhanced CLI Output:** Clean, colorized status screens with execution logs and exit code reporting.
* **Error Handling:** Validates compiler and source file existence before attempting execution.

---

## ⚖️ Disclaimer & Attribution

* **Shoriu Foundation** does not own or claim copyright over the PAWN Compiler (`pawncc.exe`), standard SA-MP include files (`a_samp.inc`, etc.), or third-party utilities included in this package.
* All included binaries and assets belong to their respective creators (**CompuPhase**, **SA-MP Team**, and community contributors).
* This repository is distributed strictly for developer convenience as an open-source toolchain wrapper.
