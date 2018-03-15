require 'sinatra/base'
require 'sinatra/flash'
require './lib/link.rb'
require 'uri'
require './database_connection_setup'

class Bookmark_manager < Sinatra::Base
  register Sinatra::Flash
  enable :sessions

  get '/' do
    @links = Link.show_all
    erb :index
  end

  get '/add-a-new-link' do
    erb :add_a_new_link
  end

  post '/create-new-link' do
    link = Link.create(url: params['url'], title: params['title'])
    flash[:notice] = "You must submit a valid URL." unless link
    redirect '/'
  end

  run! if app_file == $0
end
