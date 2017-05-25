require 'player'

describe Player do
  subject(:player) { Player.new(name) }
  let(:name) { 'Andrew' }

  it 'has a name' do
    expect(player.name).to eq name
  end
end
