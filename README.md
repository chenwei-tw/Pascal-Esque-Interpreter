# Pascal-Esque-Interpreter (P.E.I)
This is a simple Pascal-like interpreter referenced from [Ruslan's Blog](https://ruslanspivak.com).

## Build
* ```$ make main```
* ```$ ./main test_program.ps```

## Limits
* Number in the interpreter is handled with integer

## Test Program to interpreter
```
PROGRAM test_program;
VAR
    _a, b, c : INTEGER;
    d, e, f : INTEGER;

BEGIN
    _a := 3;
    b := 6;
    c := _a + b;
    { This is comment. }
    BEGIN
        d := 5;
        e := 9;
        f := d + e + c;
    END;
    _a := _a + f + 3;
    _a := _a div 2
END.
```

## Result
```
_a: 14
b: 6
c: 9
d: 5
e: 9
f: 23
```
