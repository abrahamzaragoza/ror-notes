## Date & Time
Time is a class in Ruby that helps you represent a specific point in time.

### Time
You can use the Time class in Ruby to represent a time & date.

The date part has three components:
* dat
* month
* year

The time part has three components:
* hours
* minutes
* seconds

This information is stored as the number of seconds since the Epoch, also known as **Unix Time**.

**Create Time Object**
There are a few ways to initialize a Time object:

```
Time.now
> 2022-08-24 20:24:04.850202 -0500

# using a Unix timestamp
Time.at(15000000000)
> 2445-04-30 21:40:00 -0500

Time.new(2022, 8, 24)
> 2022-08-24 00:00:00 -0500
```

You can also get the current time in UTC:

```
Time.now.utc
> 2022-08-25 01:34:55.309883 UTC
```

Time methods for Ruby On Rails:

```
Time.current

date.to_formatted_s(:short)
> "18 Aug 15:06"
```

**Arithmetic**

```
# adds 1 second
Time.now + 1

# This is ActiveSupport - RAILS ONLY
# adds 2 days
Time.now + 2.days
```

**Access any part of the Time Object**
You can ask what day, month or hour a time object is representing:

```
t = Time.now
> 2022-08-24 20:30:06.021391 -0500

t.day
> 24

t.month
> 8

t.hour
> 20
```

In addition, you can also ask if this date corresponds to a certain day of the week.

```
t.monday?
> false


t.wednesday?
> true
```

**Time Zones**
A Time object has a time zone associated with it.

You can check the current time zone for a Time object using the zone method. This will give you the time zone abbreviation.

```
t.zone
> "CDT"
```

If you want the time zone offset you can use the utc_offset method. The output for this method is in seconds, but you can divide by 3600 to get it in hours.

```
t.utc_offset
> -18000


t.utc_offset / 3600
> -5
```

**Ruby Time Formatting**
Ruby formats Time objects in a specific way by default.

You can use **strftime** method to get almost any format you need. It works by passing a string with format specifiers, these specifiers will be replaced by a value. If you have ever used the printf method the idea is very similar to that.

```
t = Time.now
> 2022-08-24 20:30:06.021391 -0500

t.strftime("%d/%m/%Y")
> "24/08/2022"

t.strftime("%k:%M")
> "20:30"

t.strftime("%I:%M %p")
> "08:30 PM"

t.strftime("Today is %A")
> "Today is Wednesday"

t.strftime("%d of %B, %Y")
> "24 of August, 2022"

t.strftime("Unix time is %s")
> "Unix time is 1661391006"
```

Here's a list of the strftime formats:

```
%d | Day of the month (01..31)

%m | Month of the year (01..12) Use `%-m` for (1..12)
 
%k | Hour (0..23)

%M | Minutes

%S | Seconds (00..60)

%I | Hour (1..12)

%p | AM/PM

%Y | Year

%A | Day of the week (name)

%B | Month (name)
```

**Generate a Timestamp**

```
Time.now.to_i
> 1661391790
```

### Date
The Date class has no concept of minutes, seconds or hours. This class stores everything internally in terms of days.

>To use the Date class you need to require 'date'

Unlike time, Date.new is not an alias for today, so keep that in mind.

```
Date.today
> #<Date: 2022-08-24 ((2459816j,0s,0n),+0s,2299161j)>

Date.new
> #<Date: -4712-01-01 ((0j,0s,0n),+0s,2299161j)>
```

Date arithmetic is similar to the Time class, the difference is that you add days instead of seconds.

```
# adds 1 day
Date.today + 1
> #<Date: 2022-08-25 ((2459817j,0s,0n),+0s,2299161j)>
```

**A Date doesn’t know anything about hours, seconds or minutes, so only use this class if you don’t need these.**

## Date & Time Parsing

**Date**
The Date.parse method will try to parse any string that looks like a date. Sometimes this will give unwanted results.

```
Date.parse("10/10/2010")
> #<Date: 2010-10-10 ((2455480j,0s,0n),+0s,2299161j)>


# takes the year as current
Date.parse("September 3")
> #<Date: 2022-09-03 ((2459826j,0s,0n),+0s,2299161j)>

# magic
Date.parse("May I have a cup of coffee, please?")
> #<Date: 2022-05-01 ((2459701j,0s,0n),+0s,2299161j)>

```

If you need something more strict you can use the **Date.iso8601** method.
>An `iso8601` date has the following format:
>	year-month-day

```
Date.iso8601("2018-10-01")
> #<Date: 2018-10-01 ((2458393j,0s,0n),+0s,2299161j)>
```

**strptime**
You can use the Date.strptime method & a set of format specifiers to provide your own custom input format. These are the same specifiers that you can use for strftime.

```
Date.strptime("3 of September", "%d of %B")
> #<Date: 2022-09-03 ((2459826j,0s,0n),+0s,2299161j)>
```

**Time**

```
require 'time'

Time.parse("September 20 18:00")
> 2022-09-20 18:00:00 -0500
```

If you want to provide the format of your input string you can use the strptime method.

```
require 'time'

Time.strptime("1 of December 2017", "%d of %B %Y")
> 2017-12-01 00:00:00 -0600
```

> The only difference between Time.parse & Date.parse is the kind of object that you get back (Time or Date).

### DateTime
The DateTime class is a subclass of Date and it can store seconds in addition to dates. This subclass perfoms **slower** than Time.

[Ruby Docs - DateTime](https://ruby-doc.org/stdlib-3.1.1/libdoc/json/rdoc/DateTime.html)

#ruby #data-types #date #time #date-time #formatting #parsing
