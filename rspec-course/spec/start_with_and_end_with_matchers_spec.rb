
RSpec.describe 'start_with and end_with mattchers' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('lar')
      expect(subject).not_to end_with('Cat') # case sensitive
    end

    it { is_expected.to start_with 'cat' }
    it { is_expected.to end_with 'lar' }
  end
end
