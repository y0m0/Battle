require 'player'

describe Player do
  subject(:player1) { Player.new('Andrew') }
  subject(:player2) { Player.new('Michael') }


  describe '#name' do
    it 'has a name' do
      expect(player1.name).to eq 'Andrew'
    end
  end

  describe '#hp' do
    it 'starts with 100hp' do
      expect(player1.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'let player attack another player' do
      player2 = spy(Player.new('Michael'))
      player1.attack(player2)
      expect(player2).to have_received(:reduce_hp_when_attacked)

    end
  end

  describe '#reduce_hp_when_attacked' do
    it 'reduce player hp when attacked' do
      expect { player2.reduce_hp_when_attacked }.to change{ player2.hp }.by(-10)
    end
  end
end
