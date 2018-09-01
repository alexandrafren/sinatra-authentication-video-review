class PostsController < ApplicationController

  get '/posts' do
    "You are logged in as #{session[:email]}"
  end

  get '/posts/new' do
    if !session[:email]
      redirect '/login'
    else
      "New Post Form"
    end
  end

  get '/posts/:id/edit' do
    if !session[:email]
      redirect '/login'
    else
      'An edit post form'
    end
  end

end
