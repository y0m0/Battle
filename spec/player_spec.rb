require 'player'

describe Player do
  subject(:player) { Player.new(name) }
  let(:name) { 'Andrew' }

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq name
    end
  end

  describe '#hp' do
    it 'starts with 100hp' do
      expect(player.hp).to eq 100
    end
    it 'can be reduced when attacked' do
      expect{player.reduce_hp_when_attacked}.to change{player.hp}.by(-10)
    end
  end
end
