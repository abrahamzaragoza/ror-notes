## Validation
[Ruby Guide](https://guides.rubyonrails.org/active_record_validations.html)

We can set validation inside the model class
```
class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
```

**presence**
field can't be empty or null.

**length**
set the min and max size of the field.

**uniqueness**
sets the field to be unique.
uniqueness comes with case sensitive set to true by default.
```
uniqueness: { case_sentitive: false }
```

**format**
validate field format, you can use regex.
```
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email format: { with: VALID_EMAIL_REGEX }
```

**Alter object stare before saving to db**
in the example, the object email will be converted to lowercase.
```
before_save { self.email: email.downcase }
```
