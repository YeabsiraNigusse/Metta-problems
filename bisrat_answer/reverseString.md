## Reverse List Function
This code defines functions to reverse a list in MeTTa.

## Function Definitions

**reverseAcc($list, $reversed):** Recursively reverses the list **$list** by accumulating the reversed elements in **$reversed**.

**Rules**
- If the list is empty, return the accumulated reversed list.
- Extract the first element (car-atom) and the rest of the list (cdr-atom).
- Recursively call reverseAcc with the remaining items and the accumulated reversed list.


**reverseList($list)**

A helper function that initiates the reversal process with an empty list as the accumulator.



