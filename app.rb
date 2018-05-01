require 'sinatra'
require 'sinatra/base'


class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "here be dragons"

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    erb :attack
  end

  post '/names' do
    session[:name1] = params[:Player_1_Name]
    session[:name2] = params[:Player_2_Name]
    redirect '/play'
  end

  post '/confirmation' do
    redirect '/result'
  end
end
