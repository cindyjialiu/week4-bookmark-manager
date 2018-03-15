require 'sinatra/base'
require 'sinatra/flash'
require './lib/link.rb'
require 'uri'

class Bookmark_manager < Sinatra::Base
  register Sinatra::Flash
  enable :sessions
  DatabaseConnection.setup('bookmark_manager')

  get '/' do
    @notice = flash[:notice]
    @links = Link.show_all
    erb :index
  end

  get '/add-a-new-link' do
    erb :add_a_new_link
  end

  post '/create-new-link' do
    flash[:notice] = "You must submit a valid URL." unless Link.create(url: params['url'])
    redirect '/'
  end

  run! if app_file == $0
end
