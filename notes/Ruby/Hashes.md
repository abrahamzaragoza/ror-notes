## Hashes
A Hash is a collection of key-value pairs. The order in which you traverse a hash by either key or value may seem arbitrary and will generally not be in the insertion order. If you attempt to access a hash with a key that does not exist, the method will return nil.

A Hash maps each of its unique keys to a specific value.

A Hash has certain similarities to an Array, but:
* An Array index is always an Integer.
* A Hash key can be (almost) any object.

**Create a new hash**
New empty hash:

```
h = Hash.new

h = Hash[]

h = {}
```

New hash with initial entries:

```
# old way
h = {:foo => 0, :bar => 1, :baz => 2}

# new way - JSON-style
h = {foo: 0, bar: 1, baz: 2}
```

**Accessing values**

```
h[:bar]
> 1
```

**Creating or Updating values**

```
# creating new key-value
h[:new] = 3

# updating existing key-value
h[:foo] = 4
```

**Delete entry**

```
h.delete(:bar)
```

**Use Hash to give names to objects**

```
person = {name: 'Matz', language: 'Ruby'}
```

#ruby #data-types #hash #symbols #key-value