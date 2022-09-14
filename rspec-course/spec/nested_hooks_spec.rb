RSpec.describe 'nested hooks' do
  before(:context) do
    p 'OUTTER Before context'
  end

  before(:example) do
    p 'OUTTER Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      p 'INNER Before context'
    end

    before(:example) do
      p 'INNER Before example'
    end

    it 'does some basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does substraction as well' do
      expect(5 - 3).to eq(2)
    end
  end
end
