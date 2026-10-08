# Reflection

## What I learned

This activity helped me understand how PL/SQL `GOTO` transfers program control to a labeled statement. I learned that a label is written using double angle brackets, for example `<<label_name>>`, and that `GOTO` should be used carefully because excessive jumps can make programs difficult to read and maintain.

I also learned that PL/SQL restricts where a `GOTO` can jump. For example, a program cannot jump from outside an `IF` statement directly into the body of that `IF` statement. The illegal-GOTO exercise showed why structured control statements such as `IF`, `ELSIF`, `ELSE`, and loops are usually clearer and safer.

The functions section helped me practice creating reusable stored functions with parameters and return values. I used functions to calculate annual salary, determine years of service, calculate tax, look up a department name, and validate payroll information. I also learned how `NO_DATA_FOUND`, `RAISE_APPLICATION_ERROR`, and other exception-handling techniques make functions safer.

Finally, I learned that stored functions can be called directly from SQL `SELECT` statements when they are designed appropriately. This makes it possible to combine stored business logic with database queries while avoiding repeated calculations in every query.

## GOTO versus structured control

`GOTO` can be useful for demonstrating how control moves through a PL/SQL block, but structured constructs are normally easier to understand. In A4, replacing `GOTO` with `IF / ELSIF / ELSE` produced shorter and clearer code. For normal application development, I would prefer structured control flow unless there is a very specific reason to use `GOTO`.

## Challenges

The main challenge was making sure functions handled invalid inputs and missing rows correctly. Adding validation and exception handling made the programs more reliable. Another important lesson was testing each function independently before using several functions together in one SQL query.
