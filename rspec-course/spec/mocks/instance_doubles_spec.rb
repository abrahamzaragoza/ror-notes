class Person
  def a(seconds)
    sleep(seconds)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      # fails - has more methods than the class
      # person = instance_double(Person, a: 'Hello', b: 20)
      person = instance_double(Person)
      # fails - takes more arguments than the class method
      # allow(person).to receive(:a).with(3, 10).and_return('Hello')
      allow(person).to receive(:a).with(3).and_return('Hello')

      expect(person.a(3)).to eq('Hello')
    end
  end
end
