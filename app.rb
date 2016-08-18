require 'sinatra/base'
require './lib/scrabble'
# require './lib/anagram'

class Game < Sinatra::Base
  enable :sessions

  get '/play' do
    @game = Scrabble.create
    @game.new_game
    erb :play
  end

  get '/hello' do
    erb :play
  end


  run! if app_file == $0
end
