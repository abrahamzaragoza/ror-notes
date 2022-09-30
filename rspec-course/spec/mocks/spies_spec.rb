RSpec.describe 'spies' do
  # spies don't neet to declare the methods, it'll just track the calls
  let(:animal) { spy('animal') }

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end
end
