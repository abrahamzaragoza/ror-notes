## Hooks
Setup code is the code that configures or “sets up” conditions for a test. Teardown code does the cleanup, it makes sure that the environment is in a consistent state for subsequent tests.

The most common hooks used in RSpec are before and after hooks. They provide a way to define and run the setup and teardown code we discussed above.

### Scopes
Hooks are stored in three scopes, which are run in order: :suite, :context, and :example. They can also be declared in several different places: RSpec.configure, a parent group, the current group.

```
before(:suite)    # Declared in RSpec.configure.
before(:context)  # Declared in RSpec.configure.
before(:context)  # Declared in a parent group.
before(:context)  # Declared in the current group.
before(:example)  # Declared in RSpec.configure.
before(:example)  # Declared in a parent group.
before(:example)  # Declared in the current group.
```

### Instance Variables
Instance variables declared in before(:context) are shared across all the examples in the group. This means that each example can change the state of a shared object, resulting in an ordering dependency that can make it difficult to reason about failures.

### Before & After

```
describe "Before and after hooks" do
   before(:each) do
      puts "Runs before each Example"
   end

   after(:each) do
      puts "Runs after each Example"
   end

   before(:all) do
      puts "Runs before all Examples"
   end

   after(:all) do
      puts "Runs after all Examples"
   end

   it 'is the first Example in this spec file' do
      puts 'Running the first Example'
   end

   it 'is the second Example in this spec file' do
      puts 'Running the second Example'
   end
end
```

Output:

> Runs before all Examples<br>
Runs before each Example<br>
Running the first Example<br>
Runs after each Example<br>
.Runs before each Example<br>
Running the second Example<br>
Runs after each Example<br>
.Runs after all Examples

