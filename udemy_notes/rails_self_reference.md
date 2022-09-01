## Self Reference
**Friendship**

```
create_table :friendships do |t|
  t.references :user, null: false, foreign_key: true
  t.references :friend, references: :users, foreign_key: { to_table :users }
  t.timestamps
end
```

important line:

```
t.references :friend, references: :users, foreign_key: { to_table :users }
```

Friendship Model:

```
class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
end
```

User Model:

```
has_many :friendships
has_many :friends, through: :friendships
```
