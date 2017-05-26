class Game
attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turns = [@player_1, @player_2]
  end

  def attack(player)
    player.reduce_hp_when_attacked
  end

  def switch
    @turns.reverse!
  end

  def attacker
    @turns.first
  end

  def defender
    @turns.last
  end
end
