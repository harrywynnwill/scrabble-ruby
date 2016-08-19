require 'sinatra/base'
require './lib/scrabble'
# require './lib/anagram'

class Game < Sinatra::Base
  enable :sessions
  set :public_folder, 'public'

  get '/' do
    @game = Scrabble.create
    @game.new_game
    @game.get_words
    erb :play
  end





  run! if app_file == $0
end
