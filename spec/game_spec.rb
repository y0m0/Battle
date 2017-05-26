require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  it 'should start with two players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'should attack the other player' do
      expect(player_1).to receive(:reduce_hp_when_attacked)
      game.attack(player_1)
    end
  end

  describe '#switch_roles' do
    it 'changes the players attacker and defender roles' do
      game.switch
      expect(game.attacker).to eq player_2
    end
  end
end
