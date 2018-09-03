class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login'
  end

  post '/sessions' do
    Helper.login(params[:email], params[:password])
    redirect '/posts'
  end

  get '/logout' do
    Helper.logout
  end

end
