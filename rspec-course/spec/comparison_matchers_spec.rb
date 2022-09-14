RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 6
    expect(10).to be < 16
    expect(1).to be >= -1
  end

  describe 100 do
    it { is_expected.to be > 99 }
    it { is_expected.to be <= 101 }
    it { is_expected.not_to be <= 99 }
  end
end
