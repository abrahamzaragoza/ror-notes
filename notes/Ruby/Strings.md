## Strings
String object has an arbitraty sequence of bytes, typically representing text or binary data.

*String objects differ from Symbol objects, Symbols are designed to be used as identifiers, instead of text or data.*

**Declaration**
```
my_string = "This is my String"

my_string = %&This is my String&

my_string = %(This is my String)

my_string = %[This is my String]

my_string = %{This is my String}

String.new("New String")
```

**Ruby DOCS**
They are multi-line strings.
```
var = <<DOC
This is my multi-line
string, on Ruby
DOC

> "This is my multi-line\nstring, on Ruby\n"
```

**Substitution Methods**
These methods perfom substitutions, they need a pattern to look for and replace it. [Regex101](https://regex101.com/)
```
<string/variable>.sub(<pattern>, <replace>)
```

```
a = "hello"

a.sub(/[aeiou]/, '*')
> "h*llo"

a.gsub(/[aeiou]/, '*')
> "h*ll*"

'THX1138'.gsub(/\d+/, '00')
> "THX00"
```

**Patterns**
Check [regexp.rdoc](https://ruby-doc.org/core-2.7.0/doc/regexp_rdoc.html) and [Regex101](https://regex101.com/).

**Accessing characters**
You can access a string character using its index. Note that the result wil still a string, since character doesn't exist in Ruby.

```
my_string = "abcde"

my_string[3]
> "d"

my_string[3].chr
> "d"
```

**Substrings**
Substrings can be obtained from strings, you must  define the start index and the length of the substring.
```
<string>[<start_index>, <length>]
```
<br>

```
my_string = "hello world"

my_string[0,3]
> "hel"

my_string[3,3]
> "lo "
```
<br>

**String Concatenation**
```
var = "" + ""
var = "" "" ""
var = "" << "" << ""
var = "".concat("").concat("")
```
<br>

```
var = "foo" + "boo"
> "fooboo"

var = "foo" "boo" "foo"
> "fooboofoo"

var = "foo" << "boo" << "foo"
> "fooboofoo"

var = "foo".concat("boo").concat("foo")
> "fooboofoo"
```
<br>

**Changing String Content**
You can change the content of a string using brackers.
```
my_string = "Welcome to Javascript"

my_string["Javascript"] = "Ruby"
> "Ruby"

my_string
> "Welcome to Ruby"
```
<br>
Note that this will only change the first match.

```
my_string = "Ruby C Ruby C Ruby C"

my_string["C"] = "C++"
> "C++"

my_string
> "Ruby C++ Ruby C Ruby C"
```
<br>
You can also change the concent from an index.

```
my_string = "Ruby C++ Ruby C Ruby C"

my_string[8] = "change"
> "change"

my_string
> "Ruby C++changeRuby C Ruby C"
```
<br>

**Spaceship Operator**
The spaceship operator compares strings in ASCII order (the sum of the characters numeric values).Compares self and other_string, returning.
* **-1** it the other string is larger.
* **0** if the two are equal.
* **1** if the other string is smaller.
* **nil** if the two are incomparable.

```
'foo' <=> 'foo'
> 0

'foo' <=> 'boo'
> 1

'foo' <=> 'fo'
> 1

'foo' <=> 'goo'
> -1
```
<br>

**String Interpolation**
As mentioned above you can stick strings together by using the + operator.

Glueing strings together like this works, and you can do it. However, there is another method of accomplishing the same, and it is widely used, and usually preferred over concatenating strings with +.
```
name = "Antonio"
sur_name = "Melendez"

p "Hello, #{name} #{sur_name}"
> "Hello Antonio Melendez"

fullname = "#{name} #{sur_name}"

p fullname
> "Antonio Melendez"

```
<br>

**String Formatting and Parsing**
Formating and Parsing strings is similar to *printf* in C, where you can use a list of format specifiers and a list of variables or values.

Here's a list of format specifiers.
```
%c - character
%d - digit (numeric)
%e - exponential float
%f - float
%i - integer
%o - octal number
%s - string
%x - hexadecimal number
%% - print % sign
\% - print % sign
```
<br>
Examples:

```
time = 5

msg = "Processing has finished in %d seconds" % [time]

p msg
> "Processing has finished in 5 seconds"
```

```
my_string = "Hello %s"

my_string  % "John"
> "Hello John"
```

You can round float numbers.

```
score = 89.5451

p "The average is %0.2f" % [score]
> "The average is 89.55"
```

```
p "Hello %s, your total points are %d" % ["John", 71]
> "Hello John, your total points are 71"
```

```
p "330 in HEX is %x" % [330]
> "330 in HEX is 14a"

p "330 in OCT is %o" % [330]
>"330 in OCT is 512"
```

Use this format for padding a number with as many 0’s as you want:

```
puts "The number is %04d" % [20]
> The number is 0020


puts "The number is %04d" % [220]
> The number is 0220

puts "The number is %08d" % [220]
>The number is 00000220
```

#ruby #data-types #string #casting #formatting #parsing #spaceship-operator