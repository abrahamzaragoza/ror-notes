## Implicity defined subject
If the first argument to an example group is a class (*described class*), an instance of tha class is exposed to each example in that example group via the *subject* method.

```
RSpec.describe Array do
  it "should be empty when first created" do
    expect(subject).to be_empty
  end
end
```

**subject in a nested group with a different class (innermost wins)**

```
class ArrayWithOneElement < Array
  def initialize(*)
    super
    unshift "first element"
  end
end

RSpec.describe Array do
  describe ArrayWithOneElement do
    context "referenced as subject" do
      it "contains one element" do
        expect(subject).to include("first element")
      end
    end
  end
end
```

### Explicit Subject

```
subject(:bob) do
    { a: 1, b: 2 }
end
```

```
RSpec.describe Hash do
  subject(:bob) do
    { a: 1, b: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end
end
```
