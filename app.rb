require './lib/game'
require './lib/player'
require 'sinatra/base'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  get '/attack' do
    @player_1= $player_1
    @player_2 = $player_2
    Game.new.attack(@player_2)
    erb :attack
  end
end
