require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  get '/play' do
    @name_p1 = session[:name1]
    @name_p2 = session[:name2]
    erb(:play)
  end
  post '/names' do
    session[:name1] = params[:Player_1_Name]
    session[:name2] = params[:Player_2_Name]
    redirect '/play'
  end
end
