require 'rubygems'
require File.join(File.dirname(__FILE__), 'app.rb')
set :public_folder, File.join(APP_ROOT, "public")

run Game
