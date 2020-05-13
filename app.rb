require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end
end











# Pig Latinizer App
#   GET '/'
#     returns a 200 status code (FAILED - 4)
#     renders the instructions (FAILED - 5)
#     renders a new form element on the page (FAILED - 6)
#     renders the form directions on the page (FAILED - 7)
#     renders the input field for the phrase (FAILED - 8)
#   POST '/piglatinize'
#     returns a 200 status code (FAILED - 9)
#     displays the pig latinized phrase upon form submission (FAILED - 10)
#   POST '/piglatinize' again
#     returns a 200 status code (FAILED - 11)
#     displays the pig latinized phrase upon form submission (FAILED - 12)