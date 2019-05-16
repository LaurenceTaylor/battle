require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    'Testing infrastructure working!'
  end

  get '/enter-names' do
    erb(:index)
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect :play
  end

  get '/play' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb(:play)
  end
end
