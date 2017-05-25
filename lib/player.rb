class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def reduce_hp_when_attacked
    @hp -= 10
  end
end
