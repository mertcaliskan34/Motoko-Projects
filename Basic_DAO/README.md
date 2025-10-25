## Basic DAO Canister

### Description

This project implements a basic Decentralized Autonomous Organization (DAO) canister on the Internet Computer (IC) using the Motoko programming language. It provides core functionalities for managing accounts, submitting and voting on proposals, and updating system parameters. This DAO aims to provide a foundational structure for community-driven governance on the IC.

### Features

*   **Account Management:**
    *   Maintains account balances using a Trie data structure for efficient storage and retrieval.
    *   Allows users to query their account balance.
    *   Enables token transfers between accounts with a configurable transfer fee.
*   **Proposal System:**
    *   Allows token holders to submit proposals with a specified payload, which can trigger actions on other canisters.
    *   Tracks proposal details, including the proposer, timestamp, votes, and current state.
    *   Provides functions for submitting, retrieving, and listing proposals.
    *   Implements a voting mechanism where token holders can vote "yes" or "no" on open proposals.
*   **System Parameters:**
    *   Defines and manages system-wide parameters such as transfer fees, proposal vote thresholds, and proposal submission deposits.
    *   Provides a function to update these parameters, restricted to the DAO's own principal ID.
*   **Proposal Execution:**
    *   Automatically executes accepted proposals via inter-canister calls.
    *   Updates the proposal state based on the execution outcome (success or failure).
    *   Refunds the proposal submission deposit to the proposer upon successful execution.

### Technologies Used

*   Motoko
*   Trie (from `mo:base/Trie`)

### Data Structures

*   `Account`: Represents a user account with an `owner` (Principal) and a `tokens` balance.
*   `Proposal`: Represents a proposal with an `id`, `proposer`, `timestamp`, `payload`, `state`, `votes_yes`, `votes_no`, and a list of `voters`.
*   `ProposalPayload`: Contains the details of the action to be performed if the proposal is accepted, including the `canister_id`, `method`, and `message`.
*   `SystemParams`: Defines the DAO's configuration parameters, such as `transfer_fee`, `proposal_vote_threshold`, and `proposal_submission_deposit`.

### Getting Started

#### Prerequisites

*   [DFX (IC SDK)](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx)

#### Installation

1.  Clone the repository:

    ```bash
    git clone <repository_url>
    cd Basic_DAO
    ```

2.  Navigate to the `Basic_DAO_backend` directory:

    ```bash
    cd src/Basic_DAO_backend
    ```

#### Usage

1.  Deploy the canisters:

    ```bash
    dfx deploy
    ```

2.  Interact with the DAO canister using DFX or a frontend application. You can:

    *   Transfer tokens.
    *   Submit proposals.
    *   Vote on proposals.
    *   Query account balances.
    *   Query proposal details.
    *   Update system parameters (requires being the DAO's principal).
