# frozen_string_literal: true

require 'sinatra/base'

# Store and display Bookmarks
class BookmarkManager < Sinatra::Base
  get '/' do
    erb(:index)
  end

  run! if app_file == BookmarkManager
end
