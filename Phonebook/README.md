# Phonebook - Motoko Project

## Overview

This project implements a simple phonebook application using the Motoko programming language. It allows users to store and retrieve contact information, such as names and phone numbers, within a decentralized environment on the Internet Computer.

## Features

*   **Add Contact:** Adds a new contact to the phonebook with a name, description, and phone number.
*   **Lookup Contact:** Retrieves the contact information (description and phone number) associated with a given name.

## Technologies Used

*   Motoko
*   HashMap (from `mo:base/HashMap`)

## Data Structures

*   `Name`: Type alias for `Text`, representing the contact's name (key).
*   `Phone`: Type alias for `Text`, representing the contact's phone number.
*   `Entry`: A record type containing the contact's description and phone number.
*   `phonebook`: A `Map.HashMap` that stores the phonebook entries, mapping `Name` to `Entry`.

## Getting Started

### Prerequisites

*   [DFX (IC SDK)](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx)

### Installation

1.  Clone the repository:

    ```bash
    git clone <repository_url>
    cd Phonebook
    ```

2.  Navigate to the `Phonebook_backend` directory:

    ```bash
    cd src/Phonebook_backend
    ```

### Usage

1.  Deploy the canister:

    ```bash
    dfx deploy
    ```

2.  Interact with the canister using DFX or a frontend application.  You can call the `insert` and `lookup` methods.

### Example

```motoko
// Example of inserting a contact
actor.insert("John Doe", { desc = "Friend", phone = "123-456-7890" });

// Example of looking up a contact
let contact = await actor.lookup("John Doe");