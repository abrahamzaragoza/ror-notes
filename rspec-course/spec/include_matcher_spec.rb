RSpec.describe 'include matcher' do
  context 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include 'col'
      expect(subject).to include 'hot'
      expect(subject).to include 'olat'
    end

    it { is_expected.to include 'col' }
  end

  context [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include 10
      expect(subject).to include 10, 20
    end
  end

  context ({ a: 2, b: 4 }) do
    it 'can check for a key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end

    it { is_expected.to include :a }
    it { is_expected.to include(b: 4) }
  end
end
