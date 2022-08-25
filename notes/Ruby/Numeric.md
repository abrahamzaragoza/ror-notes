## Numeric
Numeric is the class from which all higher-level numeric classes should inherit. For this reason, Numeric should be used when defining other numeric classes.

### Fixnum
Holds Integer values that can be represented in a native machine word. If any operation on a Fixnum exceeds this range, the value is automatically converted to a Bignum.
The value of the fixnum depends on the architecture of the system where it is executed.

**FIXNUM AND BIGNUM ARE BOTH DEPRECATED SINCE 2.4.0**
<br>

### Integers
An Integer object represents an integer value.

**Comparing methods**
```
<   | returns whether self is less than the given value.
<=  | returns whether self is less than or equal to the given value.
<=> | returns a number indicating whether `self` is less than, equal to,
	  or greater than the given value.
=== | returns whether `self` is equal to the given value.
>   | returns whether `self` is greater than the given value.
>=  | returns whether `self` is greater than or equal to the given value.

```
For more information about <=> read about Spaceship Operator in [[Operators]]
<br>

**Converting methods**
```
::sqrt | returns the integer square root of the given value.
%      | returns self modulo the given value.
<<     | returns the value of self after a leftward bit-shift.
>>     | returns the value of self after a rigthward bit-shift.
^      | returns the bitwise EXCLUSIVE OR of `self` and the given 
         value.
chr    | returns a 1-character string containing the character
         represented by the value of self.
floor  | returns the greatest number smaller than or equal to self.
to_f   | returns self converted to a Float.
 ```
<br>

### Float
Represents a sometimes-inexact real number using the native architecture's double-precision floaating point representation.
<br>

**Converting methods**
```
round    | retunrs self rounded to the nearest value, to a given
           precision.
truncate | returns self truncated to a given precision.
```
<br>

### Rational Numbers
A rational number can be represented as a pair of integer numbers: a/b (b>0), where a is the numerator and b is the denominator. Integer a equals rational a/1 mathematically.
Rational data type are values that can ve expressed as a fraction.
<br>
```
Rationa(1)
> 1/1

Rational(1, 3)
> 1/3

Rational(-2, 4)
> -1/2

3.to_r
> 3/1

2/4r
> 2/4

0.3.rationalize
> 3/10
```

#ruby #data-types #numeric #integer #fixnum #bigint #float #rational #casting #spaceship-operator