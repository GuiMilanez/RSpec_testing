RSpec.describe 'a random double' do
  it 'only allows defined method to be involved' do
    # stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double('Mr. Danger')
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end

RSpec.describe 'another double' do
  db = double('Database Connection', connect: true, disconnect: 'Goodbye')
end

RSpec.describe 'a third double' do
  fs = double('File System')
  allow(file).to receive(:read).and_return("Romeo and Juliet")
  allow(file).to receive(:write).and_return(false)
end