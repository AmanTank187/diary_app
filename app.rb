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
    session[:title] = params[:title]
    session[:body] = params[:body]
    redirect('/show_entry')
   end

   get '/show_entry' do
    @diary_title = session[:title]
    @diary_body = session[:body]
    erb :show_entry
   end

  run! if app_file == $0
end
