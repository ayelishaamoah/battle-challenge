class Game
  def initialize(player_one, player_two)
    @players= [player_one, player_two]
  end

  def player_one
    @player_one = @players.first
  end

  def player_two
    @player_two = @players.last
  end

  def attack(player)
    player.receive_damage
  end
end
