require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { double :player }

  describe '#attack' do
    it 'should attack the other player' do
      expect(player).to receive(:reduce_hp_when_attacked)
      game.attack(player)
    end
  end
end
