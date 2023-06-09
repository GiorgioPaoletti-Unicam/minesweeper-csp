# Minesweeper Solver - MiniZinc Implementation

This repository contains a Minesweeper solver implemented in MiniZinc, a high-level constraint modeling language. The program uses constraints to generate a Minesweeper game board based on a given set of mine positions.

## 📃 Project Structure

The main program constructs a Minesweeper game board, which consists of a 2D array of integer variables. Here are the key components of the program:

1. **Parameters:**
    - `square_size` (integer): The size of the game board.
    - `square_range` (set of integers): The range of valid indices for the game board.
    - `mine_range` (set of integers): The range of valid values for the game cells. `-1` represents a mine, while other numbers (from 0 to 8) represent the number of mines in the neighboring cells.
    - `input_range` (set of integers): The range of valid input values for the mine positions. `-1` represents a mine, while `0` represents a safe cell.
    - `in_mine_pos` (2D array of integers): The input array indicating the positions of the mines.

2. **Variables:**
    - `minesweeper` (2D array of integer variables): The game board. The value of each cell represents the number of mines in the neighboring cells or a mine itself.

3. **Constraints:** The constraints enforce that each cell in the game board must be assigned the correct number based on the positions of the mines.

4. **Objective:** The goal is to find a feasible solution that satisfies all constraints. The program does not optimize any objective function.

5. **Output:** The output is a visual representation of the game board. The cells containing a mine are represented by `M`.

## ⚙️ How to Run

To run the program, you will need a MiniZinc interpreter. You can run the program using the following command:

```bash
minizinc minesweeper.mzn data.dzn
```

In the above command, `minesweeper.mzn` is the main program, and `data.dzn` is a data file that provides values for the parameters.

## ✉️ Contact

For any questions or clarifications regarding this project, please contact Giorgio Paoletti at [email].

## ⚖️ License

This project is licensed under the MIT License. See the `LICENSE` file for details.
