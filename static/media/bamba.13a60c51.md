# About

Another programming language.

# Syntax

## Hello World

```bamba
def printf: extern -> i32;

def main: proc -> i32 {
    printf("Hello World!");
    
    return 0;
};
```

## Fib

```bamba
def fib: proc idx -> i32 {
    if (idx < 2) {
        return idx;
    };
    
    return fib(idx - 1) + fib(idx - 2);
};
```

# Links

- [github](http://github.com/bob16795/bamba)
