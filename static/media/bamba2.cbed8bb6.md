# About

A remake of my programming language, bamba.

# Syntax

## Hello World

```bamba2
def printf: extfn -> void;

fdef main: proc -> i32 {
    printf("Hello World!");
    
    return i32(0);
}
```

## Fib

```bamba2
def fib: proc idx[i32] -> i32 {
    if (idx < 2) {
        return idx;
    }
    
    return fib(idx - 1) + fib(idx - 2);
}
```

## Main builder builder

```bamba2
def mainBuilderBuilder: proc T -> class {
    return class {
        def buildMain: proc value[T] -> (fn -> T) {
            return fn -> T {
                return value;
            }
        } 
    } 
}

fdef main: mainBuilderBuilder(i32).buildMain(0);
```

# Reflection

- fdef and extfn are dumb keywords, problaby should split them into modifiers.
- Its obnoxious to use ~(\*value) to invert a dereferenced value.

# Links

- [GitHub](http://github.com/bob16795/bamba)
