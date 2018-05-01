require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end
  post '/names' do
    @name_p1 = params[:Player_1_Name]
    @name_p2 = params[:Player_2_Name]
    p params
    erb(:play)
  end
end
