Ruby is an interpreted, high-level, general-purpose programming language which supports multiple programming paradigms.
<br>
Ruby is dynamically typed and uses garbage collection and just-in-time compilation. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. According to the creator, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, BASIC, and Lisp.
<br>
### Naming Conventions
* **files** - file_name.rb
* **variable** - variable_name
* **constant** - CONSTANT_NAME
* **methods** - method_name
* **class/module** - ClassOrModuleName

### Comments
It is not a good practice to use commentaries, your code should be self explanatory by the names you choose for each item inside of it.
<br>
Simple coment

```
# This is a comment
```

Multiline comment

```
=begin
	This a multiline
	comment
=end
```
<br>

### Variable Declaration

Variables can be declared one by one or multile at once.

```
a = 10
b = 20

OR

a, b = 10, 20
```
<br>

### Casting 

```
to float - .to_f
to string - .to_s
to integer - .to_i
to binary - .to_s(2)
```
<br>

### Variables Scopes
```

$ | global variable

@ | instance variable

@@ | class variable (shared)

[a-z] |

or _ | local variable

[A-Z] | constant

```
<br>

### Usefull Ruby Variables
```
$@ - location of latest error

$_ - string last read by gets

$& - string last matched by regexp

$0 - name of the ruby script file currently executing

$* - command line argument used to invoke the script

$? - exit status of last executed child process
```
<br>

### Ruby Data Types
**[[Numeric]]**
**[[Strings]]**
**[[Symbols]]**
**[[Hashes]]**
**[[Arrays]]**
**[[Date & Time]]**