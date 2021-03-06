require 'sinatra/base'
require './app/models/user.rb'
require_relative 'data_mapper_setup'


class Chitter < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :welcome_page
  end

  get '/registration' do
    erb :registration
  end

  post '/registration' do
    user = User.create(:username => params[:username], :email => params[:email], :password => params[:password])
    if user.save
      session[:user_id] = user.id
      redirect to '/chitter'
    else
      erb :registration
    end
  end

  get '/sign_in' do
    erb :sign_in
  end

  post '/authenticate' do
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      session[:username] = user.username
      redirect '/chitter'
    else
      redirect '/sign_in'
    end
  end

  get '/chitter' do
    erb :peeps
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

  run! if app_file == $0

end
