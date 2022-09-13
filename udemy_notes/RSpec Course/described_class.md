## Described class
If the first argument to an example group is a class, the class is exposed to
each example in that example group via the described_class() method.

```
RSpec.describe Symbol do
  it "is available as described_class" do
    expect(described_class).to eq(Symbol)
  end

  describe 'inner' do
    describe String do
      it "is available as described_class" do
        expect(described_class).to eq(String)
      end
    end
  end
end
```

```
RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
  end
end
```
