require 'sinatra/base'

class Diary_app < Sinatra::Base

   get '/' do
     'Hello world'
   end

  run! if app_file == $0
end
