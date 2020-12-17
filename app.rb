require 'sinatra/base'

class Diary_app < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

   get '/' do
     erb :index
   end

   get '/add_entry' do
    erb :add_entry
  end

   post '/' do
    session[:body] = params[:body]
    redirect('/show_entry')
   end

   get '/show_entry' do
    @diary_entry = session[:body]
    erb :show_entry
   end

  run! if app_file == $0
end
