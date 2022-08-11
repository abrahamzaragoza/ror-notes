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
