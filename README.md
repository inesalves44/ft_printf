# ft_printf (42 lvl - 1)

## 1. Overview

This project is a part of the common core curriculum of 42 on the level 1.

For this project we need to emulate parts of the printf function in C.

The flags we need to replicate:

* %d and %i - to print integeres;
* %p - print a pointer;
* %c - print a character;
* %s - print a string;
* %x and %X - print an hexadecimal number;
* %u - print unsigned int;
* %% - print a %;

## 2. The Function

This project uses variadic functions (functions that have a variable number of arguments).

From this project we get a static library composed of all the object files needed to use our printf.

You can use this printf in your program this way:

```
ft_printf("Hello World\n");
```

## 3. Make commands
```
make all - creates the library
make clean - cleans the objects
make fclean - cleans the library, also runs clean
make re - runs clean and fclean and then runs all 
 ```
 As stated above this project creates a library. This library is composed of object files that then are used in the linker fase of a compilation.

Basically to use the library you compile it like this:
```
cc -Wall -Werror -Wextra your_file.c libftprintf.a
```

Thank you for reading!
slack: idias-al
