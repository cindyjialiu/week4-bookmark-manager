require 'sinatra/base'
require './lib/link.rb'

class Bookmark_manager < Sinatra::Base
  get '/' do
    @links = Link.show_all
    erb :index
  end
  run! if app_file == $0
end
