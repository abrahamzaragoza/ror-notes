## Gemfile
Create a group for production
```
group :production do
  gem 'pg'
end
```

Move sqlite into the development group
```
group :development do
  gem 'sqlite3', '~> 1.4'
end
```

## terminal
It will update the Gemfile.lock
```
bundle install --without production
```

## Don't forget to commit

## Heroku steps
* install cli [heroku cli](https://devcenter.heroku.com/articles/heroku-cli)
* login into your heroku account
```
heroku login
```
* create a new production version
```
heroku create
```
* push app code to herocu and deploy
```
git push heroku master
```
* change app name
```
heroku rename <new_app_name>
```
* open you app in your browser (https://newnameofyourapp.herokuapp.com)
