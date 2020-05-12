require_relative 'config/environment'
require_relative 'models/Piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input 
    end 
    
    post '/piglatinize' do 
        text=PigLatinizer.new
        @text=text.piglatinize(params[:user_phrase])
        erb :results 
    end 
end