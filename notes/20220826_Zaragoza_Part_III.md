### Abraham Zaragoza

**How do we format a string multiple times?**
* using the formatters with % multiple times, just add the values in an array separated with commas.

```
p "Today is such a %s day, theres %d degrees such nice weather!" % ["nice", 23]
```

**When should you use case vs if elsif else?**
* When you have many options in your conditions, maybe more than 2 (not counting the else). It's better to use case,
the code is more readeable.

**Using best practices, define an if else construct with variable a = (x % 2).even?**
* If we are only trying to check if a number is even, we can use the ternary operator.

```
a = 4

a.even? ? "It's even!" : "It's uneven"
```

* If we are trying to know if the result of the module of x and 2 is even, then we can still do it that way.

```
x = 4

a = (x % 2)

a.even? ? "It's even!" : "It's uneven"
```

**Exemplify the usage of times, upto and downto.**
* times

```
# we can create a separator / divisor to give some format in the console
10.times { print "/" }
> //////////
```

* upto

```
0.upto(10) { |x| print "#{x} " }
> 0 1 2 3 4 5 6 7 8 9 10
```

* downto

```
20.downto(10) { |x| print "#{x} " }
> 20 19 18 17 16 15 14 13 12 11 10
```

**Exemplify the usage of each.**

```
a = ["Daniel", "Axel", "Marie", "John"]

a.each { |name| p "Your new parter is %s" % [name]}
> "Your new parter is Daniel"
> "Your new parter is Axel"
> "Your new parter is Marie"
> "Your new parter is John"
```

**What is the difference between each and map?**
* each will return the same array without any changes.
* map will return a new array with the new changes.
Here we will use .to_c (imaginary number/ complex number)

```
a = [1, 2, 3]

a.each { |x| x.send(:to_c)}
> [1, 2, 3]

a.map { |x| x.send(:to_c)}
> [(1+0i), (2+0i), (3+0i)]
```

**Exemplify the usage of inject.**

```
a = [1, 2, 3]

# 1*2*3
a.inject(:*)
> 6
```

**How do we define an attribute getter and setter (use two ways)?**
* using attr_accessor will create getter and setter.
* definin manually the getter and setter is a bad practice, used only when you need to modify the process.

```
class Exam
  attr_accessor :grade
end

class Test
  def grade
    @grade
  end

  def grade=(grade)
    @grade = grade
  end
end
```

**How do we define a block?**
* Implicit block, just using {}

```
{ |x| puts x }
```

* explicit block, giving it a name

```
my_block = { |x| puts x }
```

**How do we define a lambda? How do we use it?**
* using = ->
* we can use it by using :call, this is the best practise.
* we can also use it with [], .(), etc.

```
my_lambda = -> { |x| puts x }

my_lambda.call
my_lambda[]
```

**How do we define a recursive function properly?**
* we have to define a base case, then proceed with the recursivity

```
def <name>
  <base_case>
  <recursivity>
end
```

**How do we define a proc and call it?**
* Instancing a new Proc object.
* Using :call

```
my_proc = Proc.new { |x| puts x }
my_proc.call
```

**What is the difference between procs and lambdas?**
* Procs return from the current method / context, while lambdas return from their own context.
* lambdas are defined using = ->, but procs need a Proc instance.
