class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awsome, I just purchased #{number} more hot chocolate!"
  end
end

RSpec.describe HotChocolate do
  it 'confirm that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
  end

  it 'confirm that an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
end
