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
    if @current_player == @players.first
      @current_player = @players.last
    else
      @current_player = @players.first
    end
  end

end
