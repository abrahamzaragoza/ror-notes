Abraham Zaragoza
* In Ruby, how do we return multiple variables and assign them where we use that method in particular?

* Elaborate on the description of two design patterns.
  - Abstract Factory: With this pattern you can create abstract families
  - Singleton: with this pattern you ensure that only one instance can be created of the choosen class.
* Define three form helpers
  - text_field: it creates a text field.
  - collection_selec: it creates a select input with its select options, which can be defined and how they are represented as values.
  - password_field: it creates a password field, which will sensor the data input at the frontend.
* What is the Rubocop convention for constants in Ruby?
  - They are declared using ALL CAPS and cammel case (SOME_CONSTANT).
* What are keyword splat arguments?
  - they are argumentes passed as hash (key:value pairs)
* How do we define an inclusive range?
  - using two dowts between initial and final value (1..5).
* What is the preferred way to interpolate variables in a string?
  - Using double quotes and #{} ("Some interpolated string with #{some_variable} in it").
* Explain what lambdas are and exemplify how they are declared.
  - Lambdas are blocks with parameters, they can be stored in a variable. There's no lambda class.
  - my_lambda = -> { p "Lambda output" }
* What is the symbols table and how do we access to it?
  - is the table with all the available symbols
  - using :all_symbols method from Symbol class (Symbol.all_symbols)
* For what is the method strftime?
  - Is is used to format a Time instance as a string ("%k:%M" => "14:20")
* What is ActiveSupport and exemplify some useful methods available through it.
  - It is the rails component that gives extra functionallity to Ruby.
  - :present?, it returns true if the param is given, false in case of nil param
  - :today, it will return today's time (Time.zone.today)
  - :pluck, it takes (filters?) params from an object and returns the choosen params from the query results (User.where(active: true).pluck(:name) => ["name1", "name2"])
* Elaborate on three software development best practices.
  - DRY: keep the code simple and readable by not repeating the code but instead using methods
  - KISS: keep it simple st*pid, don't overcomplicate your code, keep it as simple as it can be.
  - COC: conventions over configuration, focus con implied logic by default, you adapt to them instead of creating your own configuration.
* What is the difference between if, unless, while, and until.
  - If looks for a condition to happen, whereas untill looks for the condition not happening. They are opposites.
  - While will keep looping if the condition is true, whereas until will stop then the condition is true. They are opposites.
* Exemplify the usage of downto.
  ```
  10.downto(6) { |number| p number }
  => 10, 9, 8, 7, 6
  ```
* Explain the main concepts of SOLID.
  - Single responsability
  - Open / Closed principle
  - L** substitution principle
  - Interface segregation principle
  - Dependency inversion principle
* Define what is the object space.
  - No idea.
* What is metaprogramming and explain the three methods for it?
  - a program that has knowledge of it self or can manipulate it self.
  - :send, :eval, :call
* How do we recover from Memory Loops and Performance Issues?
* What is Authorized Persona?
  - It's a gem developed by Betterment, usefull for managing permissions in our rails app. It can manage multiple
 authorization tier in a single model (User)
* How do we access to the internationalization translate method?
  - t() at views
  - i18.t() elsewhere.
* What does name-spacing a resource mean?
* How do we rescue from errors in controllers?
  - we can use 'rescue ' at the controllers logic or 'rescue_from , with: ' defining a custom method for handling the error.
* What are filters and how do we avoid using them in a certain aciton?
  - filters are callbacks, to skip them we use 'skip_before_action'
* How do we bring objects through batches in ActiveRecord?
  - using :find_each, this will return batches of 1000 recods
* Explain what is Sidekiq?
  - Sidekiq is a job manager based in redis. You can define the job's queue and when to perfom the job (now or later)
* How do we define three different relationships in a Model?
  - has_one, this creates a relationship with another model
  - has_many, this creates a one to many relationship with another model
  - has_and_belongs_to_many, this creates a many to many relationship
* Explain what is MVC.
  - It's a software architecture design, Model View Controller.
  - Model - represents the data, fetch data from db
  - View - UX, it's what the user sees
  - Controller - it's the one in the middle between the models and views, handles the information and flows between them
* How do we replace text in a string using Regex?
  - using :sub or :gsub (string.gsub(/regex/, 'new_value'))
* What is Ruby on Rails?
  - RoR is a Ruby framework for fullstack web development, it's a MVC framework
* Elaborate on three best practices for Ruby on Rails.
  - use max line length of 120 characters
  - use spaces after and before braces in hashed params { something: nice }
  - use unless instead of negative if conditions
  - leave an empty line after attr_accesors
