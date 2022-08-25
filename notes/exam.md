#### Abraham Zaraogoza
**1. Please define a raw abstract of a transaction, it can include between 3 and 5 operations. The transaction must be rollbacked.**
```
BEGIN;
  SELECT first_name
    FROM customer;

  SELECT * FROM teacher
    WHERE teacher_id = 432;

  UPDATE teacher
    SET first_name = 'Mario'
    WHERE teacher_id = 223;

ROLLBACK;
```

**Please define a PostgreSQL function that returns true or false if the selected number is even.**
```
CREATE OR REPLACE FUNCTION is_even(INTEGER)
  RETURNS BOOLEAN
  LANGUAGE plpgsql
  AS
  $$
    BEGIN
      IF ($1 % 2 == 0)
        RETURN true;
      ELSE
        RETURN false
      END IF
    END;
  $$
```

**What is an aggregate function and define what do they need to work.**
* Aggregate function are a aggrupation of result data from a query, these agroupations are done row by row. They depend on GROUP BY.

**Please define a custom aggregate function.**
```
CREATE AGGREGATE price_per_code (price NUMERIC(5,2), codes smallint)
(
  INITCOND = 20.00
  STYPE = NUMERIC
  SFUNC = price_accum
);

CREATE FUNCTION price_accum(accum NUMERIC, PRICE NUMERIC, CODES smallint)
  RETURNS NUMERIC
  LANGUAGE plpgsql
  AS
  $$
    BEGIN
      SELECT accum + (price * codes) into accum;
      RETURN accum;
    END;
  $$
```

**Between what clauses do the HAVING clause execute?**
* Between GROUP BY and SELECT.

**What types of views are stored in memory? Please define a way to use them (not create them).**
* MATERIALIZED VIEWS
```
SELECT * FROM my_materialized_view;
```

**How do you declare a cursor?**
* You declare the name of the cursor, set sensibility, set scrollability and hold settings.
```
DECLARE <cursor_name> [ASENSITIVE | INSENSITIVE][NO | SCROLL] CURSOR [WITH | WITHOUT] HOLD FOR <query>;
```

**What is an asensitive cursor?**
* it calls the actual data from the tables, since they don't create a copy of their data. The data will change with the tables.

**How do we define a custom cast?**
* They can ve defined with / without function.
```
CREATE CAST (SMALLINT AS INTEGER) WITH FUNCTION smallint_to_int(SMALLINT);

CREATE OR REPLACE FUNCTION smallint_to_int(SMALLINT)
	RETURNS INTEGER
	LANGUAGE plpgsql
	AS
	$$
		BEGIN
			RETURN $1 AS INTEGER;
		END;
	$$
```

**What command do you use to bring the commit with hash 3c94f71fdf813bc475cb13f8f90b83de9cc475cb to the current branch?**
* git cherry-pick <hash>

**How do you mix the branches chore/configuration and chore/setup?**
* git rebase interactive

**How do you make a commit?**
* Use git commit -m <msg>
* You have to previusly add the changes
```
git add -A
git commit -m 'commit msg'
```

**What HTTP methods are idempotent?**
* GET, PUT, DELETE

**Please define the A PIE of Object Oriented Programming.**
* Abstraction
* Polymorphism
* Inheritance
* Encapsulation

**Define a polymorphic method in Ruby.**
* A polymorphic method is an inherited method from a parent class, but it has some changes in the child method.
* Here the Hound inherits the special method from dog, but not fully it has some changes on it.
```
class Dog
  def special_ability
    p 'woof, woof'
  end
end

class BassetHound < Dog
  def special_ability
    p 'tracking down...'
  end
end
```

**Define the usage of super and explain what is the difference between using parenthesis or not.**
* super is used to call the same method on the parent class.
* super can be used as super(), in case the parent method requires some arguments or doens't have the same number of arguments than the child method.
```
class Dog
  def special_ability
    p 'woof, woof'
  end
end

class BassetHound < Dog
  def special_ability
    super
  end
end
```

**What is the difference between include and extend?**
* Include adds the methods to the instances, instance methods
* Extend adds the methods to the metaclass, class methods

**Define what is a class method?**
* Class methods are those which can be called inside the classes, they don't depend on an instance.
* Class methods work with the class itself.

**Define what is an instance method?**
* Instance methods are methods only provide functionality to the instance of the class, not the class.
* They depend on the instance.

**What is IRB?**
* Interactive Ruby Console

**How do we know what type of class is a variable?**
* calling the class method
```
a.class
```

**How do we define a binary number?**
* using the prefix 0b
```
0b10 = 2
```
* casting a number to binary
```
2.to_s(2)
> "10"
```

**What are keyword splat arguments? Define the difference with splat arguments.**
* keyword splat artuments are Hash passed as arguments, letting us use key:value pairs as arguments.
* Splat arguments lets us use Arrays as arguments

**How do we define a range?**
* using two period between the start and the end of the range.
```
1..10
a..z
abc...abj
```

**How do we modify arrays?**
* we can access a specific item in the array using it's index.
```
a = [1, 2, 4, 5]
a[0] = 10
p a
> 10, 2, 4, 5
```

**Define three methods for arrays and their usage.**
* each | it will iterate through all the elements of the array.

```
a.each { |item| p item }
```

* max | it will return the max (greater) element in the array

```
a.max
> 5
```

* sort | it will sort the elements of the array

```
a = [5, 1, 3, 4, 2]
a.sort
> 1, 2, 3, 4, 5
```

**Define three methods for Numeric and their usage.**
* negative? | it will return true if the number is negative

```
a = -2.3
a.negative?
> true
```

* truncate | it will truncate the numeric into a integer

```
a = 2.3
a.truncate
> 2
```

* even? | it will return true if the number is even

**Define three methods for String and their usage.**
* upcase | it will turn the string into caps

```
a = "String"
a.upcase
> "STRING"
```

* gsub | it replace a substring

```
a.gsub("ing", "doc")
```

* split | divides the string into substring, you can also give the split condition (or use a regex)

```
a = "hello there i am a string"
a.split
> ["hello", "there", "i", "am", "a", "string"]

a = "hi,friend,word,something"
a.split(",")
> ["hi", "friend", "word", "something"]
```

**Elaborate and explain the six assignment combined operators.**
* = | assings the value to the variable
* += | it sums the value to the current variable value
* -= | it substracts the value to the current variable value
* *= | it multiplies the variable value x times
* << | shovel operator - it will do a left shift (integers), append in arrays
* >> | it will do a right shift (integers)

```
2 << 1
> 4
# 11 binary
```
* >>


**What is the spaceship operator? How does it look like?**
* It's a combined compare operator, will return 1, 0, or −1
* <=>
