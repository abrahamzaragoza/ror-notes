### Webpacker Manifest - empy - not created
[StackOverflow Fix](https://stackoverflow.com/questions/58520418/rails-webpacker-compile-error-on-production-enviorment)
```
yarn add @rails/webpacker

bundle update webpacker
```

### Rails test - error
**This happens in rails v6.1 and Ruby 3.0**
The error is because the gem 'rexml' which was included by default in Ruby 2.6 and 2.7 is not included in Ruby 3.0
```
# add rexml to Gemfile
gem 'rexml', require: false
# run
bundle install
```

### Error running '__rvm_make -j10'
Error while installing old versions of Ruby on M1, Big Sur+
```
CFLAGS="-Wno-error=implicit-function-declaration" rvm install 2.5
```
