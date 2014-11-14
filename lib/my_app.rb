require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/player'

class MyApp < Sinatra::Base

  set :views, Proc.new { File.join(root, "..","views") }
  # GAME = Game.new
  get '/' do
    'rockpaperscissors!'
    erb :welcome
  end

  get '/' do
    erb :welcome
  end

  post '/create_player' do
    player= Player.new
    @player_name = params[:player_name]
    erb :welcome

  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
