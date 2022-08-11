Create new rails project
```
rails _version_ new <project_name>
rails _6.1.6.1_ new blog
```

Run rails project
```
rails server
rails s
```

Install gems from Gemfile
```
bundle install
```

Update all gems
```
bundle update
```

See project routes
```
rails routes

# more detailed version and easier to read
rails routes --expanded
```

Generate
```
rails generate <what_to_generate>
rails g <what>

rails g controller <controller_name>

rails g scaffold <scaffold_name> <column_name>:<data_type>
```

Add linux to lock file platforms
```
bundle lock --add-platform x86_64-linux
```
