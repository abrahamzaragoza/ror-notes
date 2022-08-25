### Abraham Zaragoza

**Define three ways of declaring and instancing a string**
```
String.new

String.new("String")

a = "String"

a = %[This is my String]

a =<<DOC
  this is a
  multiline string
  DOC
```

**What does gsub does?**
* It matches a pattern and replaces it with a new string.
```
a = "This is a string in Ruby"

a.gsub("is", "is not")
> "This not is not a string in Ruby"
```

**What is a symbol?**
* A symbol object is an idetifier, where the important "value" o aspect of the object is the identity itself, not the data.
* Used to represent methods and class/module variables (:method, :variable)

**If we define three symbols, with the same value, :example, and the second has object id 437768 what would the object_id of the other two would be?**
* It will be the same id (id 437768), no matter how many times we declare the symbol. That's one of the adventages symbols has over strings.

**What is reflection in programming?**
* I have no idea, just by the name I would say it's something related to introspection (idk if I wrote this right), where the code can see it self or it's behaviour and analize it. Maybe related to ML, but maybe I'm just tripping with some phylosophical stuff and this ain't that deep.

**Define the usage of the three metaprogramming methods.**
* Just remember that Symbols objects are used in metaprogramming.

**How do we access the symbols table?**
* Using the method 'all_symbols', this will return the symbols array.
```
Symbol.all_symbols
```

**How do we define a hash?**
* There are multiple ways to do it, the recommended one might be using {} and if needed add some key-value pairs.
```
Hash.new
a = Hash.new
a = {}

# note that keys can be strings, integer, symbols...
# values can be strings, integer, boolean...
a = {key1: "value1", key2: "value2"}
```

**Define three methods for a hash and their usage.**
* :delete | it can delete an 'entry' (key-value pair)

```
a = {one: 1, two: 2, three: 3}

a.delete(:two)
> :two and it's value are deleted from the hash.
```

* :each | iterates through all the key-value pairs and you can do something with the data

```
a.each { |key, value| p "This is the key: #{key} and it's value: #{value}"}
> "This is the key: one and it's value: 1"
> "This is the key: two and it's value: 2"
> "This is the key: three and it's value: 3"
```

* empty? | It will return true if hash is empty, false otherwise

```
a.empty?
> false

b = {}
b.empty?
> true
```

**How do we define and instance a Time variable?**
* Using :new or :now

```
t = Time.new
t = Time.now
```

**How do we access the day of the time?**
* using :day, it will return the day of the month (1-31), not the week day.

```
t.day
> 25
```

**Elaborate an script that has all requirements to run and exemplify the usage of three methods for Date. Please consider you would need to store the Date in a variable.**

```
require 'date'

# :today, gives us the current date
d = Date.today

# :thursday? will return true if it's thursday.
d.thursday?
> true

# same as Time method, returns the day of the month
d.day
> 25

# It will parse the string as a dat, using ml to find the date format.
d2 = Date.parse("August 3")
> 2022-08-03
```

**What is ActiveSupport?**
* This is for Ruby on Rails, not related to Ruby itself. It's some kind of bundle or package that provides more functions to Ruby.
* Some examples of it can be used in Date/Time objects.

```
# this gives us the current time and only works with RoR
Today.current
```

**How do we format a string in a single line?**
* using string formatters like %d for a digit, %s for a string, etc.

```
# had to google 52023942 in hex.
puts "Hello %s, you have been away for %d days. Your new id is %x" % ["Samuel", 19, 52023942]
> "Hello Samuel, you have been away for 19 days. Your new id is 319d286"
```
