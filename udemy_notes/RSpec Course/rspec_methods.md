RSpec uses the words "describe" and "it" so we can express concepts like a conversation:
* describe | "Describe an order."
* it | "It sums the prices of its line items."
* expect

### Scopes
**Example Group**
Example groups are defined by a *describe* or *context* block. The block is evaluated in the context of a subclass of RSpec::Core::ExampleGroup.

**Example**
Defined by a *it* block, are evaluated in the context of an instance of the example group class to which the example belongs. Examples are not executed when the spec file is loaded; instead, RSpec waits to run any examples until all spec files have been loaded, at which point it can apply filtering, randomization, etc.

### Aliases
Aliases are provided to make specs read in English nicer based on the body of your test.

**Context**
Context is the same method as *describe*. The method is really usefull in cases where you have to nest multiple describe, using *context* improves the readability of your test.

```
RSpec.describe '#even? method' do

  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
```

**Specify**
Specify is the same method as *it*

```
describe Array do
  describe "with 3 items" do
    before { @arr = [1, 2, 3] }

    specify { @arr.should_not be_empty }
    specify { @arr.count.should eq(3) }
  end
end

describe Array do
  describe "with 3 items" do
    subject { [1, 2, 3] }

    it { should_not be_empty }
    its(:count) { should eq(3) }
  end
end
```
