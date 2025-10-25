## To-Do List Canister

### Overview

This project implements a simple To-Do List application using the Motoko programming language for the Internet Computer. It allows users to add tasks, mark them as completed, view the task list, and clear completed tasks. The canister utilizes a `HashMap` for efficient data storage.

### Features

*   **Add Task:** Adds a new task to the to-do list.
*   **Complete Task:** Marks a task as completed.
*   **View Tasks:** Displays the current list of to-do items.
*   **Clear Completed Tasks:** Removes all completed tasks from the list.

### Technologies Used

*   Motoko
*   HashMap (from `mo:base/HashMap`)

### Data Structures

*   `ToDo`: A record type containing the task's description (Text) and completion status (Bool).
*   `todos`: A `Map.HashMap` that stores the to-do items, mapping a unique `Nat` ID to each `ToDo` entry.

### Getting Started

#### Prerequisites

*   [DFX (IC SDK)](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx)

#### Installation

1.  Clone the repository:

    ```bash
    git clone <repository_url>
    cd ToDoList
    ```

2.  Navigate to the `ToDoList_backend` directory:

    ```bash
    cd src/ToDoList_backend
    ```

#### Usage

1.  Deploy the canister:

    ```bash
    dfx deploy
    ```

2.  Interact with the canister using DFX or a frontend application. You can call the `addTodo`, `completeTodo`, `getTodos`, `showTodos`, and `clearCompleted` methods.

#### Example

```motoko
// Example of adding a task
let taskId = await actor.addTodo("Buy groceries");

// Example of completing a task
await actor.completeTodo(taskId);

// Example of viewing tasks
let todos = await actor.getTodos();
