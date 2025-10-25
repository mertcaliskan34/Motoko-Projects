## Superhero Management Canister

### Overview

This project implements a canister for managing superhero information on the Internet Computer using the Motoko programming language. It provides functionalities to create, read, update, and delete (CRUD) superhero profiles, including their names and superpowers. The canister utilizes a Trie data structure for efficient data storage and retrieval.

### Features

*   **Create Superhero:** Adds a new superhero to the system with a unique ID, name, and a list of superpowers.
*   **Read Superhero:** Retrieves the information of a superhero by their ID.
*   **Update Superhero:** Modifies the information of an existing superhero.
*   **Delete Superhero:** Removes a superhero from the system.

### Technologies Used

*   Motoko
*   Trie (from `mo:base/Trie`)
*   List (from `mo:base/List`)

### Data Structures

*   `SuperheroId`: Type alias for `Nat32`, representing the unique identifier for each superhero.
*   `Superhero`: A record type containing the superhero's name (Text) and a list of superpowers (List.List\<Text>).
*   `superheroes`: A `Trie.Trie` that stores the superhero data, mapping `SuperheroId` to `Superhero`.

### Getting Started

#### Prerequisites

*   [DFX (IC SDK)](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx)

#### Installation

1.  Clone the repository:

    ```bash
    git clone <repository_url>
    cd Superhero
    ```

2.  Navigate to the `Superhero_backend` directory:

    ```bash
    cd src/Superhero_backend
    ```

#### Usage

1.  Deploy the canister:

    ```bash
    dfx deploy
    ```

2.  Interact with the canister using DFX or a frontend application. You can call the `create`, `read`, `update`, and `delete` methods.

#### Example

```motoko
// Example of creating a superhero
let superheroId = await actor.create({
  name = "Superman";
  superpowers = List.cons("Flight", List.cons("Super Strength", List.nil()));
});

// Example of reading a superhero
let superhero = await actor.read(superheroId);
```

### Learning Concepts

This project teaches the following Motoko concepts:

- **Trie Data Structure**: Working with `Trie.Trie` for efficient data storage
- **CRUD Operations**: Implementing Create, Read, Update, Delete operations
- **List Manipulation**: Using `List.List` for managing dynamic collections
- **ID Management**: Creating and managing unique identifiers
- **Data Persistence**: Storing complex data structures in canisters
- **Type Safety**: Working with strongly typed data structures

### Key Learning Outcomes

- Master Trie data structure for efficient storage and retrieval
- Learn to implement complete CRUD operations
- Understand List data structure and its operations
- Practice ID generation and management systems
- Experience working with complex nested data structures
- Develop skills in data persistence and retrieval