## Symbols
Symbol objects represent named identifiers inside the Ruby interpreter.

The same Symbol object will be created for a given name or string for the duration of a program's execution, regardless of the context or meaning of that name.

**Symbol vs String**
*Symbol objects are different from String objects in that Symbol objects represent identifiers, while String objects represent text or data.*

Ruby symbols are defined as “scalar value objects used as identifiers, mapping immutable strings to fixed internal values.” Essentially what this means is that symbols are immutable strings.

Every time a string is written, it creates a new object with a new place in memory, even if the string is textually identical to an existing string. However, since symbols are immutable, they always refer to the same object and the same place in memory.

>Strings can hurt a program’s performance if string objects are repeatedly created and destroyed when the same object could have been reused in their place. For this reason, a program that uses symbols over strings (when possible) will run more efficiently.

**Representation**

```
:symbol_name
```

They are used to represent methods and instance variable names.

```
attr_reader :name

////

[1,2,3].send(:max) <= method as symbol
> 3
```

*A symbol cannot be created twice. On the memory space it will be the same.*

**When should you use them?**
If the textual content of the object is importante, use a String. If the identity of the object is important, use a Symbol.

**Define multiple symbols**
You can define an array of symbols using [Ruby's Notation.](http://ruby.zigzo.com/2014/08/21/rubys-notation/)

```
symbols = %i[a b c]
> [:a, :b, :c]
```

**Using symbols in Hashes**
You can use symbols as key in Hashes, instead of using strings or any other.

```
hash = {a: 1, b: 2}
```

**Casting Symbols**

```
:hi.to_s
> "hi"


"hi".to_sym
> :hi
```

#ruby #data-types #symbol