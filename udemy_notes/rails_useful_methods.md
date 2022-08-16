**Timestamp to words**
```
time_ago_in_words(<date>)

# example
<small>Created <%= time_ago_in_words(article.created_at) %></small>
> Created 14 days ago
```

**Simple Format**
Returns text transformed into HTML using simple formatting rules. Two or more consecutive newlines(\n\n or \r\n\r\n) are considered a paragraph and wrapped in <p> tags. One newline (\n or \r\n) is considered a linebreak and a <br /> tag is appended. This method does not remove the newlines from the text.
```
simple_format(<variable>)
> Line 1
> Line 2
> Line 3
```
