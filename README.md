# Compilation Instructions

To convert from Assembly to object code, run the following:
```bash
as [FILENAME].s -o [FILENAME].o
```

From there, to compile to a machine code executable, run the following:
```bash
gcc -o [FILENAME].bin [FILENAME].o -nostdlib -static
```

Now you have an executable binary file (which contains a .bin extension to easily filter out compiled binaries in a .gitignore; it can be removed whenever).
