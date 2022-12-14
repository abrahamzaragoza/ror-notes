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

**Is New Record?**
lets you know if the object is a new record. Usefull in reusable partials.
```
# If it is a new record, it will show 'Sign up' in the button
# If not new, it will display 'Update' int he button
<%= f.submit(@user.new_record? ? "Sign up" : "Update account", class: "btn btn-outline-light btn-lg") %>
```
**Pluralize**
Attempts to pluralize the singular word unless count is 1
```
pluralize(user.articles.count, "article")
```

**Render Iterative**
```
# this will render all categories from the article
# but expects a _category partial to be able to render each category
<%= render @article.categories %>
```

**HTML Safe**
Marks a string as trusted safe. It will be inserted into HTML with no additional escaping performed.
```
<%= f.button '<i class="bordered inverted orange edit icon"></i>'.html_safe %>
```

**Reset Postgres PK**
```
ActiveRecord::Base.connection.reset_pk_sequence!('table_name')
```
