RSpec.describe Hash do
  subject(:bob) do
    { a: 1, b: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end

RSpec.describe Array do
  subject(:sally) do
    [2, 3]
  end

  it 'has two values' do
    expect(subject.length).to eq(2)
    sally.pop()
    expect(sally.length).to eq(1)
  end

  it 'is the same as the original' do
    expect(sally).to eq([2, 3])
  end
end
