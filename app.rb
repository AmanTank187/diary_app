require 'sinatra/base'

class Diary_app < Sinatra::Base

   get '/' do
     'Hello world'
     erb :index
   end

   post '/' do
     
   end

  run! if app_file == $0
end
