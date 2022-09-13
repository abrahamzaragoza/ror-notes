## One-liner syntax
RSpec will give the examples a doc string that is auto-
generated from the matcher used in the example. This is designed specifically
to help avoid duplication in situations where the doc string and the matcher
used in the example mirror each other exactly. When used excessively, it can
produce documentation output that does not read well or contribute to
understanding the object you are describing.

```
RSpec.describe Array do
  describe "when first created" do
    # Rather than:
    # it "should be empty" do
    #   subject.should be_empty
    # end

    it { should be_empty }
    # or
    it { is_expected.to be_empty }
  end
end
```

```
RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'wich classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
```
