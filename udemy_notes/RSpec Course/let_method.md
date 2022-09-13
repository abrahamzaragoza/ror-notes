## Let
Use *let* to define a memorized helper method. The value will be cachede across multiple calls in the same example but not across examples.

**lazy loading**
Let is lazy-evaluated, it is not evaluated until the first time the method it defines is invoked.

```
$count = 0
describe "let" do
  let(:count) { $count += 1 }

  it "memoizes the value" do
    count.should eq(1)
    count.should eq(1)
  end

  it "is not cached across examples" do
    count.should eq(2)
  end
end
```

let helps to DRY up your tests. You can share variables between all of your examples and you can also override them in specific tests. In this example, all of your tests can use thing. You can also override thing to a different value, in a describe block.

source: [All bout rspec let](https://medium.com/@tomkadwill/all-about-rspec-let-a3b642e08d39)

### Overwritting

```
class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
```
