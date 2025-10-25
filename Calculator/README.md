## Calculator Canister

### Overview

This project implements a simple calculator canister using the Motoko programming language for the Internet Computer. It provides functionalities to perform basic arithmetic operations such as addition, subtraction, multiplication, and division. The canister maintains an internal state (`cell`) to store the current value.

### Features

*   **Addition:** Adds a given number to the current value.
*   **Subtraction:** Subtracts a given number from the current value.
*   **Multiplication:** Multiplies the current value by a given number.
*   **Division:** Divides the current value by a given number, with zero-division check.
*   **Clear:** Resets the current value to zero.

### Technologies Used

*   Motoko

### Getting Started

#### Prerequisites

*   [DFX (IC SDK)](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx)

#### Installation

1.  Clone the repository:

    ```bash
    git clone <repository_url>
    cd Calculator
    ```

2.  Navigate to the `Calculator_backend` directory:

    ```bash
    cd src/Calculator_backend
    ```

#### Usage

1.  Deploy the canister:

    ```bash
    dfx deploy
    ```

2.  Interact with the canister using DFX or a frontend application. You can call the `sum`, `sub`, `mult`, `div`, and `clean` methods.

#### Example

```motoko
// Example of adding 5 to the current value
let result = await actor.sum(5);

// Example of dividing the current value by 2
let result = await actor.div(2);

// Example of clearing the calculator
await actor.clean();
