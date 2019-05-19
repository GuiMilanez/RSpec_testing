RSpec.describe Array do
  subject(:sally) do
    ['1', '2']
  end

  it 'should have 2 items' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'should again have 2 items' do
    expect(subject.length).to eq(2)
  end
end