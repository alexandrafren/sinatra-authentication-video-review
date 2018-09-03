class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login'
  end

  post '/sessions' do
    Helper.login
    redirect '/posts'
  end

  get '/logout' do
    Helper.logout
  end

end
