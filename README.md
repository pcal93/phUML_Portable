# 📦 PhUML Portable UML Diagram Generator (Batch Version)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Release](https://img.shields.io/github/v/release/pcal93/phUML_Portable)](https://github.com/pcal93/phUML_Portable/releases)

> UML diagram generator for PHP **without installation**.  
> Fully portable and works on Windows using Batch, PHP Portable, and Graphviz Portable.

This portable tool automatically generates **Class Diagrams** and class relationship graphs from any PHP source folder. It is fully self-contained and requires **no installation**—ideal for USB drives, network shares, classrooms, and restricted corporate environments.

---

## ✨ Features
- **Zero Dependencies:** No need to install PHP, Composer, or Graphviz.
- **Automation:** Everything handled by a single `.bat` script.
- **Vector Output:** Generates `.svg` files for perfect zoom.
- **Full Analysis:** Recursive scanning (`-r`) and association detection (`-a`).
- **Quick Start Friendly:** Ready to use with minimal setup.

---

## 🚀 Quick Start
```bash
# Clone repository
git clone https://github.com/pcal93/phUML_Portable.git
cd phUML_Portable

# Place dependencies in bin/ (PHP, Graphviz, phuml.phar)
# Run generator
./genera_uml.bat
```
Drag your PHP project folder into the terminal window, press Enter, and the diagram will be generated in `output/`.

---

## 📥 Installation
### Quick Method (Pre-built package)
1. Go to [Releases](https://github.com/pcal93/phUML_Portable/releases).
2. Download the latest `.zip` file.
3. Extract into a folder and run `genera_uml.bat`.

### Developer Method (Build from source)
1. Clone repository and cd into folder.
2. Download dependencies:
   - **PHP:** Non-Thread Safe → `bin/php/` [Download](https://windows.php.net/download/)
   - **Graphviz:** zip → `bin/graphviz/bin/dot.exe` [Download](https://graphviz.org/download/)
   - **PhUML:** `phuml.phar` → root [Releases](https://github.com/MontealegreLuis/phuml/releases) [Docs](https://montealegreluis.com/phuml/)

3. Verify folder structure:
```text
/ (Root)
├── genera_uml.bat
├── phuml.phar
├── README.md
├── output/  # generated files here
└── bin/
    ├── php/
    │   └── php.exe
    └── graphviz/
        └── bin/
            └── dot.exe
```

---

## 🚀 Usage
1. Run **`genera_uml.bat`**.
2. Drag your PHP project folder into the terminal window.
3. Press `Enter`.
4. Wait for the diagram to be generated in `output/`.

---

## 🛠️ Advanced Customization
Edit `genera_uml.bat` to modify generator behavior. Options include:
- `-r`: Recursive scanning.
- `-a`: Generate associations.
- `phuml:dot`: Change phUML commands.

---

## ❓ Troubleshooting
- Terminal closes immediately → run in CMD to see errors.
- "Graphviz not found" → check `bin/graphviz/bin/dot.exe` path.
- Diagram too large → remove `-a` or analyze subfolders only.

---

## 📄 License & Credits
- **Batch Script:** [MIT License](https://opensource.org/licenses/MIT)
- **phUML:** [MIT License](https://github.com/MontealegreLuis/phuml/blob/master/LICENSE)
- **Graphviz:** [Common Public License](https://graphviz.org/license/)
- **PHP:** [PHP License](https://www.php.net/license/)

---

## 🖼 Screenshots / Examples
![Example Diagram](https://raw.githubusercontent.com/pcal93/phUML_Portable/main/output/example_diagram.svg)

---

## 📝 Roadmap
- [ ] Add support for multiple output formats (PNG, PDF)
- [ ] Add custom themes for diagrams
- [ ] Add drag-and-drop GUI wrapper for Windows

---

## 🤝 Contributing
Contributions welcome! Fork the repo, make changes, and submit a pull request. Report issues via GitHub Issues.
