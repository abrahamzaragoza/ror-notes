# README

## Commands used

```
rails g migration CreateUsers

rails g migration RemoveHeigthFromUsers

rails g migration ChangeUsers

rails db:migrate VERSION=20220831163645

rails db:migrate

# chages were made

rails db:rollback STEP=1

# reverted changes from last migration
```

rollback output:

```
Running via Spring preloader in process 63965
== 20220831164622 ChangeUsers: reverting ======================================
-- change_table(:users)
   -> 0.0243s
== 20220831164622 ChangeUsers: reverted (0.0243s) =============================
```
