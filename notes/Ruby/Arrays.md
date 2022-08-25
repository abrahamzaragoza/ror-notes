## Arrays
An Array is an ordered, integer-indexed collection of objects, called *elements*. Any object may be an Array element.

**Array indexes**
Array indexing starts at 0, as in C or Java. A positive index is an offset from the first element:
* 0 | indicates the first element
* 1 | indicates the second element

A negative index is an offset, backwards, from the end of the array:
* -1 | indicates the last element
* -2 |  indicates the next-to-last element

A non-negative index is _in range_ if it is smaller than the size of the array. For a 3-element array:
* Indexes from 0 through 2 are in range
* index 3 is out of range

Trying to access an index out of range will return a *nil*.

```
a = [1, 2, 3]

a[3]
> nil
```

**Creating Arrays**
A new array can be created by using the literal constructor []. Arrays can contain different types of objects.

```
# contains integer, string and float
ary = [1, "two", 3.0]
```

```
arr = Array.new

# creates a new Array with 3 empty elements
Array.new(3)
> [nil, nil, nil]

Array.new(4, "examaple")
> ["examaple", "examaple", "examaple", "examaple"]
```

Create an array with separate objects a block can be passed instead.

```
Array.new(4) {Hash.new}
> [{}, {}, {}, {}]

Array.new(5) { |i| i.to_s }
> ["0", "1", "2", "3", "4"]
```

Create multi-dimensional arrays:

```
table = Array.new(3) {Array.new(3)}
> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
```

**Accessing Elements**
Elements in an array can be retrieved using the [] method. It can take a single integer argument (a numeric index), a pair of arguments (start and length) or a range.

```
arr = [1, 2, 3, 4, 5, 6]

arr[2]
> 3

arr[100]
> nil

arr[-3]
> 4

arr[2, 3]
> [3, 4, 5]

arr[1..4]
> [2, 3, 4, 5]
```

**Array Methods**
* .empty?
	* returns true if the array is empty
* .size
	* returns the number of elements in the array
* .first
	* returns the first element of the array
* .last
	* returns the last element of the array
* .index()
	* returns the index of the element
* take
	* returns the first n elements of the array
* drop
	* drops the first n elements of the array

<br>

```
a = [1, 2, 3, 4, 5, 6, 7]

a.empty?
> false


a.size
> 7


a.first
> 1


.last
> 7


a.index(4)
> 3

a.take(3)
> [1, 2, 3]

a.drop(3)
> [4, 5, 6, 7]
```

**Adding elements to Array**
Adding elements to the end of the array.

```
a = ["one", "two", "three"]

a.push("four")
> ["one", "two", "three", "four"]

a << "five" << "six"
> ["one", "two", "three", "four", "five", "six"]
```

Adding elements to the begining of the array.

```
a = ["one", "two", "three"]

a.unshift("zero")
> ["zero", "one", "two", "three"]
```

Adding elements at any position.

```
a = ["one", "two", "three"]

a.insert(2, "two and a half")
> ["one", "two", "two and a half", "three"]
```

**Removing items from an Array**
Remore element at any position:

```
a =  [1, 2, 3, 4, 5, 6]

a.delete_at(1)
> 2

a
> [1, 3, 4, 5, 6]
```
The method pop removes the last element in an array and returns it:

```
a =  [1, 2, 3, 4, 5, 6]

a.pop
> 6

a
> [1, 2, 3, 4, 5]
```

To retrieve and at the same time remove the first item, use shift:

```
a =  [1, 2, 3, 4, 5, 6]

a.shift
> [2, 3, 4, 5, 6]
```

To delete a particular element anywhere in an array, use delete:

```
a = [1, 2, 2, 3, 2]

a.delete(2)
> 2

a
> [1, 3]
```

If you need to remove nil values from an array use compact:

```
a = ['foo', 0, nil, 'bar', 7, 'baz', nil]

a.compact
> ["foo", 0, "bar", 7, "baz"]
```

Remove duplicate elements from an array:

```
a = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]

a.uniq
> [2, 5, 6, 556, 8, 9, 0, 123]
```

**Iterating over Arrays**
Like all classes that include the Enumerable module, Array has an each method, which defines what elements should be iterated over and how.

```
a = [1, 2, 3, 4, 5]

a.each { |element| print element, " " }
> 1 2 3 4 5
```

Another sometimes useful iterator is reverse_each which will iterate over the elements in the array in reverse order.

```
words = %w[first second third fourth fifth sixth]

str = ""

# each word is appended to str
words.reverse_each {|word| str += "#{word} "}

p str
> "sixth fifth fourth third second first "
```

The map method can be used to create a new array based on the original array, but with the values modified by the supplied block:

```
a = [1, 2, 3, 4, 5]

a.map { |i| 2*i }
> [2, 4, 6, 8, 10]
```

**Combining Arrays**

```
a = [1, 2, 3]

b = [4, 5, 6]

c = [7, 8]

a + b
> [1, 2, 3, 4, 5, 6]

a.concat(b)
> [1, 2, 3, 4, 5, 6]

a.concat(b, c)
> [1, 2, 3, 4, 5, 6, 7, 8]

array1.concat(array2)
```

**Logical Operators**
* **-** | Difference
	* Returns a new array that is a copy of the first array with any items that also appear in second array removed.
* **&** | Intersection
	* Creates a new array from two existing arrays containing only elements that are common to both arrays. Duplicates are removed.
* **|** | Union
	* Concatenates two arrays. Duplicates are removed.

```
a = [1, 2, 3, 7]

b = [1, 4, 5, 6]

a - b
> [2, 3, 7]

a & b
> [1]

a | b
> [1, 2, 3, 7, 4, 5, 6]
```

**Spaceship Operator**
Returns -1, 0, or 1 as self is less than, equal to, or greater than other_array. For each index i in self, evaluates result = self[i] <=> other_array[i].
> It will return the first less than or greater than that occurs.

```
[0, 1, 2] <=> [0, 1, 3]
> -1

[0, 1, 2] <=> [0, 1, 2]
> 0

[0, 1, 2] <=> [0, 0, 2]
> 1

[0, 1, 2] <=> [0, 0, 3]
> 1

[0, 0, 2] <=> [0, 1, 3]
> -1
```

#ruby #data-types #array #each #spaceship-operator #map