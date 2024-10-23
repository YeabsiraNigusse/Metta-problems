# Leap Year Function in meTTa

This project implements a function to determine whether a given year is a leap year in the meTTa language.

## Description

The **`leap-year`** function checks whether a year is a leap year based on the following rules:

1. A year is a leap year if it is divisible by 4.
2. However, if the year is divisible by 100, it is **not** a leap year.
3. If the year is divisible by 400, it **is** a leap year despite being divisible by 100.

The function returns `true` for leap years and `false` for non-leap years.

## Example Usage

Here are some examples of how to use the `leap-year` function:
- `! (leap-year 2002)` returns `false`
- `! (leap-year 1996)` returns `true`
