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
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player_one = @game.player_one
    @player_two = @game.player_two
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_two)
    erb :attack
  end

  run! if app_file == $0
end
