require 'sinatra/base'

class Battle < Sinatra::Base
  # start the server if ruby file executed directly
  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  post '/names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    erb :play
  end

  run! if app_file == $0
end
