RSpec.describe 'be martcher' do
  it 'can test or truthiness' do
    expect(true).to be_truthy
    expect('hello').to be_truthy
    expect('').to be_truthy
    expect([]).to be_truthy
    expect(1).to be_truthy
    expect(2).to be_truthy
    expect(0).to be_truthy
    expect([1, 2]).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 1 }
    expect(my_hash[:b]).to be_nil
  end
end
