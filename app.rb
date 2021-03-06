require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  get '/enter-names' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    $game.attack($game.player2)
    erb(:attack)
  end
end
