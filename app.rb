require 'sinatra'
require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "here be dragons"

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name_p1 = $name_p1.name
    @name_p2 = $name_p2.name
    erb(:play)
  end

  get '/result' do
    @name_p1 = $name_p1.name
    @name_p2 = $name_p2.name
    erb :attack
  end

  post '/names' do
    $name_p1 = Player.new(params[:Player_1_Name])
    $name_p2 = Player.new(session[:name2] = params[:Player_2_Name])
    redirect '/play'
  end

  post '/confirmation' do
    redirect '/result'
  end
end
