class Player

  attr_reader :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def name
    @name
  end

  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    @hp -= 10
  end

end
