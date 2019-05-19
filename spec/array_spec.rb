RSpec.describe Array do
  it 'should be empty' do
    expect(subject.length).to eq(0)
    subject.push('fire')
    expect(subject.length).to eq(1)
  end
end