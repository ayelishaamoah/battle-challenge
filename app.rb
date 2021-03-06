require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  # start the server if ruby file executed directly

  get '/' do
    erb :index
  end

  post '/names' do
    player_one = Player.new(params[:player_one])
    player_two = Player.new(params[:player_two])
    @game = Game.create(player_one, player_two)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end
  
  get '/play' do
    if @game.current_player.hit_points == 0
      redirect '/game_over'
    else
      erb :play
    end
  end

  get '/attack' do
    @game.attack(@game.opponent_of(@game.current_player))
      erb :attack
  end


  post '/switch_turns' do
    @game.switch_turns
    redirect '/play'
  end

  get '/game_over' do
    erb :game_over
  end

  run! if app_file == $0
end
