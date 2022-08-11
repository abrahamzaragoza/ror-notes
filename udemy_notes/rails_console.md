### Open console
```
rails c
rails console
```

### reload
reload will load the changes in the rails project.
```
reload!
```

### get records of model
This will return all the records
```
Article.all
```

### create new instances of models
There are 3 ways of creating new instances of our models

Using create method
```
# this method creates and stores the instance in the db
Article.create(title: "Something", description: "some description")
```

using variables and multiple setters
```
article = Article.new
article = Article.new
article.title = "second article"
article.description = "description of second article"
# note that this is just an instance, but it isn't stored in the db yet
# in order to save the instance, use .save
article.save
```

using variables in one line
```
article = Article.new(title: "third article", description: "description of third article")
# this also creates an instance but doesn't save it
article.save
```
## CRUD

Create
```
Article.create(<column>:<data>)
```

Read
All will brind *all* records
```
Article.all
```

find a specific record. The result can be stored in a variable.
```
Article.find(2)
> Article with id 

# store in variable
article = Article.find(2)

Article.first
Article.last
```

Update
```
article = Article.find(2)
article.title
> "Second article title"

# you can change the values, but this will only affect the instance in the variable
# in order to make changes in the db, use .save
article.title = "Edited - Second article title"
article.save
```

Delete
```
article = Article.find(2)
article.destroy
```
