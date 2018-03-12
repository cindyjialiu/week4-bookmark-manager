require 'sinatra/base'

class Bookmark_manager < Sinatra::Base
  get '/' do
    links = [
              "http://www.google.co.uk/",
              "http://www.wikipedia.org/",
              "http://www.vogue.co.uk/"
            ]
    links.join
  end
  run! if app_file == $0
end
