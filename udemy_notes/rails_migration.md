# Migrations

Migrations files are named with timestapms, in order for rails to keep track of them. Once a migration file is executed, it won't be executed again.

### Generate migration
It will create a migration file
```
rails g migration <migration_file_name>
```

### Run migrations
It will run the latest migration
```
rails db:migrate
```

### rollback
** NOT RECOMENDED **
It will revert migrations.
```
rails db:rollback
```

### adding changes to migration files
Create table
```
create_table :<table_name> do |t|
  t.<data_type> :<column_name>
end
```
```
create_table :articles do |t|
  t.string :title
end
```

Modify table
```
add_column :<table_name>, :<column_name>, :<data_type>
add_column :articles, :description, :text
```
