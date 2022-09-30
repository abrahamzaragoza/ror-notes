RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double("Database Connection", connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')
  end

  it "tests the student's knowledge of the course's content - allow" do
    fs = double("File System")
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
    expect(fs.read).to match('Romeo and Juliet')
    expect(fs.write).to be_falsy
  end
end
