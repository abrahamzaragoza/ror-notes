## Rails
Rails follows the MVC (Model-View-Controller) design pattern. MVC is a design pattern that divides the responsibilities of an application to make it easier to reason about.
[M](https://guides.rubyonrails.org/active_record_basics.html)
[V](https://guides.rubyonrails.org/action_view_overview.html)
[C](https://guides.rubyonrails.org/action_controller_overview.html)

## app
* ### assets
  - images (static) and stylesheets
* ### channels
  - real time communication in rails applications
* ### controllers
  - the controller is responsible for making sense of the request and producing the appropriate output
* ### helpers
  - methods exclusively used by views
* ### javascript
  - packs folder: main js manifest file (application.js)
* ### models
  - the layer of the system responsible for representing business data and logic
* ### views
  - responsible for compiling the response

## Important concepts
### concerns
Modules that are used by the controller/model, adding new features to them. They are a way to make easier to understand and manage controllers/models in RoR, giving the reusability sharing the same concerns. They are automatically loaded by Rails.

### lib
All modules that are not related to any controller/model/view, here they are loaded. Treat non-ActiveRecord classes as first class citizens. Store code that is not domain specific.

## config/
All configuration / custom configuration / environment configuration. Credentials, etc. The most important file here is the **routes** file.

## db
development and test databases are stored here. Migration files / schema files.

## Gemfile
list of gems needed for our project.

## Gemfile.lock
Similar to yarn.lock
