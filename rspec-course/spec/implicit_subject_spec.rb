RSpec.describe Hash do
  # let(:my_hash) { Hash.new }
  let(:subjet) { Hash.new }

  it 'should start off empty' do
    expect(subjet.length).to eq(0)
    subject[:some_key] = 'Some Value'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between exampled' do
    expect(subjet.length).to eq(0)
  end
end

RSpec.describe Array do
  let(:subjet) { Array.new }

  it 'should start off empty' do
    expect(subjet.length).to eq(0)
    subject.push('Value')
    expect(subject.length).to eq(1)
  end
end
