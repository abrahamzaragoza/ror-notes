RSpec.describe 25 do
  it 'can test for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }

  context [:usa, :canada, :mexico] do
    it 'can check for multiple possibilities' do
      expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
    end
  end
end
