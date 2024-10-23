# List Reversal Function in meTTa

This project implements a recursive list reversal function in the meTTa language. The function takes a list as input and returns the list in reverse order.

## Description

The project contains two key functions:

1. **`reverse`**: This function takes a list as input and reverses its elements.
2. **`builder`**: A helper function that recursively processes the list, extracting each element and appending it to a new list in reverse order.

The implementation uses an accumulator-based recursion, where the helper function `builder` builds the reversed list step by step.

## How It Works

- The **`reverse`** function initializes an empty list as an accumulator and calls **`builder`** to process the input list.
- The **`builder`** function splits the input list into its head and tail, recursively building the reversed list by appending the head to the accumulator.

## Example Usage

Here are some examples of how to use the `reverse` function:
- `! (reverse (1 2 3 4 5))` returns `(5 4 3 2 1)`
- `! (reverse (kidus is cool))` returns `(cool is kidus)`
