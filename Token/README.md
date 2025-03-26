## Token Canister - ICRC-1 Compliant

### Description

This project implements a basic ICRC-1 compliant token canister using the Motoko programming language for the Internet Computer (IC). It allows users to transfer tokens to other accounts within the IC ecosystem, adhering to the ICRC-1 standard for fungible token transfers.

### Features

*   **ICRC-1 Compliance:** Implements the ICRC-1 standard, ensuring interoperability with other ICRC-1 compliant tokens and ledgers on the IC.
*   **Token Transfer:** Enables users to transfer tokens to specified accounts.
*   **Asynchronous Processing:** Processes transfers asynchronously for a non-blocking user experience.
*   **Error Handling:** Includes error handling to manage potential issues during token transfers.
*   **Debugging Support:** Utilizes the `Debug` canister for logging transfer details.

### Data Structures

*   `Account`: A record type containing the `owner` (Principal) and optional `subaccount` (Nat8) of an account.
*   `TransferArgs`: A record type containing the transfer details, including the `amount` (Nat) and the `toAccount` (Account).

## Getting Started

### Prerequisites

*   [DFX (IC SDK)](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx)
*   `icrc1_ledger_canister` (Ensure this canister is available in your environment, potentially through a Candid interface or a local deployment.)

### Installation

1.  Clone the repository:

    ```bash
    git clone <repository_url>
    cd Token
    ```

2.  Navigate to the `Token_backend` directory:

    ```bash
    cd src/Token_backend
    ```

### Usage

1.  Deploy the canister:

    ```bash
    dfx deploy
    ```

2.  Interact with the canister using DFX or a frontend application. You can call the `transfer` method.

### Example

```motoko
// Example of transferring tokens
import Principal "mo:base/Principal";
import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";

let toAccount : Token.Account = {
  owner = Principal.fromText("YOUR_RECIPIENT_PRINCIPAL"); // Replace with the recipient's principal ID
  subaccount = null;
};

let transferArgs : Token.TransferArgs = {
  toAccount = toAccount;
  amount = 100; // Replace with the amount to transfer
};

let result = await actor.transfer(transferArgs);