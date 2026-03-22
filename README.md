# 🐚 Bash Scripting Learning Journey

> A structured, hands-on journey through Bash scripting — from the very basics to real-world automation.

---

## 📖 About

This repository documents a step-by-step learning journey through Bash scripting. Each folder focuses on a specific concept, with practical scripts that reinforce understanding through doing. The goal is to build a strong foundation in Linux scripting and gradually move toward writing real automation tools.

---

## 📁 Repository Structure

```
Bash_scripting_learning_journey/
│
├── basic/                  # Variables, echo, comments, arithmetic
├── conditionals/           # if / elif / else statements
├── nested_conditions/      # Conditions within conditions
├── case/                   # case statement and pattern matching
├── loops_automation/       # for, while, until loops + automation tasks
├── arguments_flags/        # Positional parameters, $@, $#, getopts
├── functions/              # Defining, calling, and returning from functions
├── user_input/             # Reading input with `read`
├── exitcode/               # Exit codes, $?, error handling
└── texteditor/             # Text processing with sed, awk, grep
```

---

## 🗂️ Topics Covered

### 🔹 Basic
Foundational Bash concepts including:
- Writing your first script with `#!/bin/bash`
- Variables and string manipulation
- `echo` and `printf` for output
- Comments and script structure
- Basic arithmetic with `$(( ))`

### 🔹 Conditionals
Writing decision-making logic using:
- `if`, `elif`, `else`, `fi`
- String comparisons (`=`, `!=`)
- Numeric comparisons (`-eq`, `-ne`, `-lt`, `-gt`)
- File test operators (`-f`, `-d`, `-e`)

### 🔹 Nested Conditions
Handling more complex logic flows:
- `if` statements inside other `if` blocks
- Combining conditions with `&&` and `||`
- Real-world decision trees

### 🔹 Case
Cleaner branching with:
- `case ... in ... esac` syntax
- Pattern matching with wildcards
- Replacing long `if-elif` chains

### 🔹 Loops & Automation
Repeating tasks efficiently:
- `for` loops over lists and ranges
- `while` loops with conditions
- `until` loops
- Loop control: `break` and `continue`
- Small automation scripts

### 🔹 Arguments & Flags
Making scripts reusable and dynamic:
- Positional parameters: `$1`, `$2`, `$@`, `$#`
- Handling optional flags with `getopts`
- Validating user-provided input

### 🔹 Functions
Writing modular and reusable code:
- Declaring and calling functions
- Passing arguments to functions
- Returning values with `return` and `echo`
- Local variables with `local`

### 🔹 User Input
Making scripts interactive:
- Reading input with `read`
- Prompting users with `-p` flag
- Silent input with `-s` (e.g., passwords)
- Input validation

### 🔹 Exit Codes
Writing robust and reliable scripts:
- Understanding `$?` and exit status
- Using `exit 0` and `exit 1`
- Error handling patterns
- Chaining commands with `&&` and `||`

### 🔹 Text Editor (sed / awk / grep)
Processing and transforming text:
- Searching with `grep`
- Stream editing with `sed`
- Field processing with `awk`
- Combining tools in pipelines

---

## 🚀 Getting Started

### Prerequisites
- A Linux/macOS terminal or WSL on Windows
- Bash version 4+ (check with `bash --version`)

### Running a Script

```bash
# Clone the repository
git clone https://github.com/Abhishek08Mishra/Bash_scripting_learning_journey.git
cd Bash_scripting_learning_journey

# Give execute permission to a script
chmod +x basic/hello_world.sh

# Run the script
./basic/hello_world.sh
```

---

## 💡 Tips for Learning

- **Run every script** — reading is not enough; execution makes concepts stick.
- **Modify scripts** — change values, break things, and see what happens.
- **Use `bash -x`** to debug: `bash -x script.sh` prints every command as it runs.
- **Read `man` pages** — `man bash` is your best friend for detailed reference.

---

## 📈 Progress

| Topic               | Status  |
|---------------------|---------|
| Basic               | ✅ Done |
| Conditionals        | ✅ Done |
| Nested Conditions   | ✅ Done |
| Case                | ✅ Done |
| Loops & Automation  | ✅ Done |
| Arguments & Flags   | ✅ Done |
| Functions           | ✅ Done |
| User Input          | ✅ Done |
| Exit Codes          | ✅ Done |
| Text Editor         | ✅ Done |

---

## 🔭 What's Next

Possible topics to explore going forward:
- **Process management** — background jobs, `&`, `wait`, `kill`
- **File I/O** — reading/writing files, redirection (`>`, `>>`, `<`)
- **Regular expressions** — advanced `grep`, `sed`, and `awk` patterns
- **Cron jobs** — scheduling scripts with `crontab`
- **Signal handling** — `trap` for cleanup on exit
- **Script packaging** — writing scripts others can install and use

---

## 🤝 Contributing

This is a personal learning repository, but suggestions and feedback are always welcome! Feel free to open an issue if you spot something that could be improved.

---

## 📜 License

This project is open source and available under the [MIT License](LICENSE).

---

> *"The best way to learn Bash is to write Bash."* — keep scripting! 🚀
