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
    if !logged_in?
      redirect '/login'
    else
      if post = current_user.posts.find(params[:id])
        "An edit post form #{current_user.id} is editing #{post.id}"
      else
        redrect '/posts'
      end
    end
  end

end
