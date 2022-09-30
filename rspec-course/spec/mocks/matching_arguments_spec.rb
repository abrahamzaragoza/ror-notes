RSpec.describe 'matching arguments' do
  it 'can return diferent values depending on the argument' do
    three_element_array = double #[1, 2, 3]
    allow(three_element_array).to receive(:first).with(no_arg).and_return(1)
    allow(three_element_array).to receive(:first).with(1).and_return([1])
    allow(three_element_array).to receive(:first).with(2).and_return([1, 2])
    allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expec(three_element_array.first). to eq(1)
    expec(three_element_array.first(1)). to eq([1])
    expec(three_element_array.first(2)). to eq([1, 2])
    expec(three_element_array.first(3)). to eq([1, 2, 3])
    expec(three_element_array.first(100)). to eq([1, 2, 3])
  end
end
