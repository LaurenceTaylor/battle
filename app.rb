require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  get '/enter-names' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:Player1]
    @player2 = params[:Player2]
    erb(:play)
  end
end
