# Motoko Projects - Internet Computer Internship Bootcamp

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Motoko](https://img.shields.io/badge/Motoko-Learning-blue)](https://internetcomputer.org/)
[![DFX](https://img.shields.io/badge/DFX-IC%20SDK-green)](https://internetcomputer.org/docs/current/developer-docs/setup/install/)

> This repository contains educational projects developed during the Internet Computer Bootcamp to learn Motoko programming language and build decentralized applications (dApps) on the Internet Computer (IC).

## Learning Objectives

- Master the fundamentals of Motoko programming language
- Understand Internet Computer canister development
- Learn DFX (IC SDK) usage and deployment
- Build practical dApps with different complexity levels
- Explore governance mechanisms and token standards

## Projects Overview

This repository contains the following learning projects, ordered by complexity:

### 🟢 Beginner Level
- **[Calculator](./Calculator/)** - Basic arithmetic operations and state management
- **[Phonebook](./Phonebook/)** - Data storage and retrieval using HashMap

### 🟡 Intermediate Level  
- **[ToDoList](./ToDoList/)** - Task management and user interaction patterns
- **[Superhero](./Superhero/)** - CRUD operations and Trie data structure usage

### 🔴 Advanced Level
- **[Token](./Token/)** - ICRC-1 compliant token implementation and standards
- **[Basic_DAO](./Basic_DAO/)** - Decentralized governance and voting mechanisms

## Quick Start

### Prerequisites
- [DFX (IC SDK)](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx)

### Running a Project
```bash
# Clone the repository
git clone <repository_url>
cd Motoko-Projects

# Navigate to any project
cd Calculator  # or any other project

# Start local IC replica
dfx start

# Deploy the canister
dfx deploy

# Interact with the canister
dfx canister call <canister_name> <method_name> <arguments>
```

## Learning Path

1. **Start with Calculator** - Learn basic Motoko syntax and state management
2. **Move to Phonebook** - Understand data structures and HashMap usage
3. **Try ToDoList** - Explore user interaction and task management
4. **Advance to Superhero** - Master CRUD operations and Trie data structures
5. **Learn Token** - Understand ICRC-1 standards and token mechanics
6. **Master Basic_DAO** - Implement governance and voting systems

## Technologies Used

- **Motoko** - Programming language for Internet Computer
- **Internet Computer (IC)** - Blockchain platform
- **DFX** - Development framework and CLI
- **Trie & HashMap** - Data structures for efficient storage

## Learning Resources

- [Motoko Documentation](https://internetcomputer.org/docs/current/developer-docs/language-guide/motoko)
- [DFX Documentation](https://internetcomputer.org/docs/current/developer-docs/setup/install/)
- [Internet Computer Documentation](https://internetcomputer.org/docs/current/developer-docs/)
- [Motoko Base Library](https://internetcomputer.org/docs/current/developer-docs/language-guide/motoko)

## Contributing

This is an educational repository. Feel free to:
- Report issues or bugs
- Suggest improvements
- Add more learning examples
- Share your learning journey

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Project Status

| Project | Status | Complexity | Key Concepts |
|---------|--------|------------|--------------|
| Calculator | ✅ Complete | 🟢 Beginner | State management, basic operations |
| Phonebook | ✅ Complete | 🟢 Beginner | HashMap, data storage |
| ToDoList | ✅ Complete | 🟡 Intermediate | Task management, user interaction |
| Superhero | ✅ Complete | 🟡 Intermediate | CRUD operations, Trie structure |
| Token | ✅ Complete | 🔴 Advanced | ICRC-1 standard, token mechanics |
| Basic_DAO | ✅ Complete | 🔴 Advanced | Governance, voting mechanisms |
