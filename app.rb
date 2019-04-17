require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  # start the server if ruby file executed directly
  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one.player_name
    @player_two = $player_two.player_name
    erb :play
  end

  get '/attack' do
    @player_one = $player_one.player_name
    @player_two = $player_two.player_name
    erb :attack
  end

  run! if app_file == $0
end
