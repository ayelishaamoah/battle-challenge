class Game

  attr_reader :current_player

  def initialize(player_one, player_two)
    @players= [player_one, player_two]
    @current_player = player_one
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

  def switch_turns
  @current_player = opponent_of(current_player)
end

def opponent_of(the_player)
  @players.select { |player| player != the_player }.first
end

end
