## Scaffold
A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.<br>
A scaffold is a set of automatically generated files which forms the basic structure of a Rails project. <br>
These files include:
* A controller
* A moddel
* Views for every standard controller action (index, edit, show, new)
* A new route
* A migration (to prepare the database)

Basic use
```
rails g scaffold <scaffold_name>
rails g scaffold books
> 
> book controller
> book model
> resources :book added to routes (config/routes.rb)
> testing related files
> views (app/views/books)
> migration file
```

More detailed use
```
rails g scaffold <scaffold_name> <column_name>:<data_type>
rails g scaffold books title:string author:string publication_year:integer
```

Running migration, it'll create the table and the schema file. Also a sqlite-development file.
```
rails db:migrate
```

Delete scaffolding
```
rails d scaffold <scaffold_name>
rails d scaffold books
```
