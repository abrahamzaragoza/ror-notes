## Adding gems
We're using a sass version of materialize.
The material_icons gem is optional, unless you want access to all the icons. You can skip it and use imports.

```
gem 'materialize-sass', '~> 1.0.0'
gem 'material_icons'
gem 'jquery-rails'
```

## Importing materialize
> application.js

```
//= require jquery
//= require materialize
```

> custom.css.scss

```
@import "materialize";
```

> application.css

```
*= require material_icons
```

## Enabling dropdown menu
> application.js

```
$(document).on('turbolinks:load', function(){
  $('.dropdown-trigger').dropdown({
  });
});
```
