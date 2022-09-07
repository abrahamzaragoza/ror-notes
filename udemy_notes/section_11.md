# Software as a Service Project Managment App

## Setting up a New Rails project with Postgres

```
rails new <name> -d postgresql
```

In order to use postgres, you MUST create the database:

```
rake db:create db:migrate
```

## Settin up Mailer on Rails

Config settings:
> environment.rb

```
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
```

Dev settings:
> development.rb

```
config.action_mailer.delivery_method = :test
config.action_mailer.default_url_options = { :host => 'localhost:3000'}
```

Prod settings:
> production.rb

```
config.action_mailer.delivery_method = :smtp
config.action_mailer.default_url_options = { :host => 'host.com', :protocol => 'https'}
```

In order to avoid reloading conflicts, remove TurboLinks from the project. Then install all gems.

```
bundle install --without production
```

## Adding Milia
[Milia](https://github.com/jekuno/milia) is a multi-tenanting gem for Ruby on Rails applications.

* Milia is a solid choice for (SaaS) applications which are used by more than one tenant (i.e. companies or organizations) and is tailored for common use cases of multi-tenanted applications.
* Milia allows to save the data of all tenants in the same database and enforces row based separation of the tenant data.
* Milia uses the devise gem for user authentication and registration.

### Add Devise
In order for Milia to work we need Devise, since Milia uses devise for user auth and registration.

```
gem 'devise'
gem 'milia'
```

### Installing Milia

```
rails g milia:install --org_email='<organization_email>'
```

Add the following to Aplication Controller:

```
before_action :authenticate_tenant!
```

Run the commands:

```
spring stop
rails g milia:install --org_email='mail@your-provider.de' --skip_devise_generators=true
```

Setup database:

```
rake db:drop db:create db:migrate
```

## Adding Bootstrap

>Gemfile

```
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
```

Generate bootstrap and devise-bootstrap views:

```
bundle install --without production
rails generate bootstrap:install static
rails g devise:views:locale en
rails g devise:views:bootstrap_templates
```

Add boostrap css
> application.css

```
*= require devise_bootstrap_views
```

Add theme to app layour

```
rails g bootstrap:layout application
```

Copy the contents (without module declaration and last end) from the twitter-bootstrap-rails gem [documentation](https://github.com/seyhunak/twitter-bootstrap-rails/blob/master/app/helpers/bootstrap_flash_helper.rb). Paste it to app/helper/application_helper.rb file under module ApplicationHelper.

Update milia
> config/initializers/milia.rb

```
set the config.use_coupon to false from true
set the config.use_recaptcha to false from true
```

Update index method:
> home_controller.rb

```
if current_user
  if session[:tenant_id]
    Tenant.set_current_tenant session[:tenant_id]
  else
    Tenant.set_current_tenant current_user.tenants.first
  end
  @tenant = Tenant.current_tenant
  params[:tenant_id] = @tenant.id
end
```

## Build Homepage with styling
This part was just implementing Bootstrap components into the project.

## Add Plans for Tenants
Generate a migration and migrate:

```
rails g migration add_plan_to_tenants plan:string
rake db:migrate
```

Create a Plan model:
> Note that this model is not a subclass of ArtiveRecord, since it's not ment to have a plan's table.

```
class Plan
  PLANS = [:free, :premium]

  def self.options
  PLANS.map { |plan| [plan.capitalize, plan] }
  end
end
```

Add plans to milia's tenant params whitelist:

```
config.whitelist_tenant_params = [:plan]
```

Add validations to Tenant:
Note that his is rails 4 syntax.
> tenant.rb

```
validates_presence_of :name
validates_uniqueness_of :name
```

New syntax:

```
validate :name, presence: true, uniqueness: true
```

### Adding Plan fields to Registration form.
This code only shows the plan form control.

```
<%= fields_for( :tenant ) do |w| %>
  <div class="form-group col-md-6 no-right-padding">
    <%= w.label :plan %>
    <%= w.select :plan, options_for_select(Plan.options, params[:plan]),{}, required: true, class: "form-control" %>
  </div>
<% end %>
```

## Confirmation

Create a Custom Confirmations Controller:
> confirmations_controller.rb

```
class ConfirmationsController < Milia::ConfirmationsController

end
```

Update routes with custom controller.

Create a show view for confirmation:
> views/devise/show.html.erb
Here the user can create a password:

```
<%= form_for(resource, :as => resource_name, :url => update_user_confirmation_path,
    :html => { :method => :put, :class => "form login" }) do |f| %>
  <%= hidden_field_tag :confirmation_token, @confirmation_token %>
  <%= f.password_field :password, :class => "form-control" %>
  <%= f.password_field :password_confirmation, :class => "form-control" %>
<% end %>
```

### Invitation functionality
The admin user can invite new members to the organization, using the emails and personal information of the new user. They will receive an email in ordear to create a password for their user.

### Projects for Tenants
Creating a Project table, this will belong to a Tenant.
Projects must be assigned to a Tenant (manager).
> set_tenant

Only assigned Tenant can access each Project.
> verify_tenant

### Create Artifacts
Artifacts belong to a Project.

```
rails g scaffold Artifact name:string key:string project:belongs_to
```

Add attr_accessor in order to be able to upload files.

```
attr_accessor :upload
```
