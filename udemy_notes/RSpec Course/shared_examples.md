## Shared Examples
Shared examples let you describe behaviour of classes or modules. When declared,
a shared group's content is stored. It is only realized in the context of
another example group, which provides any context the shared group needs to
run.

**Require**
Files containing shared groups must be loaded before the files that
use them. While there are conventions to handle this, RSpec does not do
anything special (like autoload). Doing so would require a strict naming
convention for files that would break existing suites.

```
# Single file
require 'shared_example_spec'

# Full dir
Dir["./spec/support/*.rb"].sort.each { |f| require f }
```

**Conventions**
One convention is to put files containing shared examples in spec/support/
and require files in that directory from spec/spec_helper.rb

```
Dir["./spec/support/**/*.rb"].sort.each { |f| require f }
```

When running only one spec file, loading unneeded dependencies or performing
unneeded setup can have a significant, noticable effect on how long it takes
before the first example runs.

**Example**

```
RSpec.shared_examples 'a Ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end
```

```
require 'support/shared_example_spec'

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with three elements'
end
```

Source: [Shared Examples](https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples)
