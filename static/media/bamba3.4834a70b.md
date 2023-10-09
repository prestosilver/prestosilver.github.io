# About

A remake of my programming language... again.

# Major syntax changes

```bamba
// semicolons make more sense

// changed ~ operator to be !
def a: !(5 == 0);

// added the force keyword
// void type is now capitalized for consistancy
force def main: fn[] -> Void;

// replace extfn with extern fn
extern fn printf: fn[] -> Void;

// function parameters are cleaner
def cls: class {
    def a: fn[self: *Self] -> Void;
};

// unary ops dont need parenthesis
def b: !!(5 == 0);
```

# Reflection

- It problaby wouldve been cleaner to use operator overides for Values.
- I couldve combined the Node and Value enums.
- Problaby shouldnt force casting, type infrencing bamba4?
- Comptime & emit expressions have weird syntax sometimes

# Links

- [GitHub](http://github.com/bob16795/bamba3)
