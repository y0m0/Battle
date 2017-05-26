require './lib/game'
require './lib/player'
require 'sinatra/base'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    redirect '/gameover' unless $game.loser.nil?
    erb :play
  end

  get '/attack' do
    $game.attack($game.defender)
    erb :attack
  end

  post '/switch' do
    $game.switch
    redirect '/play'
  end

  get '/gameover' do
    erb :gameover
  end
end
