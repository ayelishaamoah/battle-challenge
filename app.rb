require 'sinatra/base'

class Battle < Sinatra::Base
  # start the server if ruby file executed directly
  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  run! if app_file == $0
end
