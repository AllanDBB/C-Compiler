# C Compiler for TEC_IC I processor.

**THE COMPILER IS UNDER DEVELOPMENT. IT'S NOT FINISHED YET**
## Introduction
This project develops a compiler for a specific subset of the C programming language, designed to generate code executable by the TEC_IC I processor. The goal is to enable programming in C for this processor, facilitating software development, including potentially an operating system kernel.

## Supported C subset.
The compiler currently supports a basic subset of C, optimized for the capabilities of the TEC_IC I processor. Below are the supported components:

### Data Types:
- **int**: 32-bit integer numbers.
- **char**: ASCII characters.

### Ahritmetic and Logical Operations
- **Aritméticas**: `+` (addtion), `-` (substraction), `*` (multiplication), `/` (division).
- **Lógicas**: `&&` (logical AND), `||` (logical OR), `!` (logical NOT).

### Control Structures
- **Conditionals**: `if`, `else`.
- **Loops**: `while`, `for`.

### Functions
- Definition of functions with arguments and return type.
- Function calls and argument passing by value.

## Getting started
TO compile a C program using this compiler, follow these steps:

1. Write your code in C, ensuring it adheres to the supported C subset.
2. Run the compiler from the command line:

   ```bash
   ./my_compiler filename.c
   ```
3. The compiler will generate an executable file specific for the TEC_IC I processor.

## Example Program:
Here is a example of a C program that calculates the sum of two numbers:

```c
// Sum of two numbers in C
int main() {
    int a = 5;
    int b = 10;
    int sum = a + b;
    return sum;
}
```

## Lexical Analysis (Scanning)

The first stage of the compilation process is Lexical Analysis. In this phase, the source code is tokenized into a series of tokens that represent the syntactic structure of the program. This process simplifies the identification of keywords, identifiers, constants, and operators in the source code. Our compiler utilizes [Flex](https://github.com/westes/flex "Flex GitHub Repository") for this purpose, enabling efficient and accurate lexical analysis tailored for the TEC_IC I processor.

## Contributions

Contributions to the project are welcome. If you wish to contribute, please submit a pull request or open an issue to discuss the proposed changes.

## License

This project is distributed under the GNU License. See the LICENSE file for more details.
