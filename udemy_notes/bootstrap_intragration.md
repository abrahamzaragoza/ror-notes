## Setting up the environment rady for bootstrap

Install required libraries for bootstrap
```
yarn add bootstrap jquery popper.js
# specific versions for udemy_course with rails 6
yarn add bootstrap@4.4.1 jquery@3.4.1 popper.js@1.16.1
```

Require bootstrap
*app/assets/stylesheets/application.css*
```
*= require bootstrap
```

Import bootstrap in js
*app/javascript/packs/application.js*
```
import "bootstrap"
```

Setting environment cofig
*config/webpack/environment.js*
```
const { environment } = require('@rails/webpacker')

const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment
```

Importing bootstrap to customise styles
*app/assets/stylesheets/custom.css.scss*
```
@import 'bootstrap/dist/css/bootstrap';

#navbar example
.navbar {
  background-color: #FDF6EA !important;
}
```

### Rails 6
Install bootstrap, jQuery & PopperJs

```
gem 'bootstrap'
```

```
yarn add bootstrap jquery @popperjs/core
```

Add boostrap to project
> application.html.erb

```
    <%= stylesheet_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
```

> application.js

```
import "bootstrap"
import "stylesheets/application"
```

> javascript/stylesheets/application.scss

```
@import "bootstrap";
```
