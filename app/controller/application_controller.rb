class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end

  get '/' do
    session[:greeting] = "Hello World"
    "Hello World"
  end

  helpers do
    def logged_in?
      !!session[:email]
    end

    def login(email, password)
      user = User.find_by(:email => email)
        if user && user.authenticate(password)
          session[:email] = user.email
        end
      else
        redirect '/login'
    end

    def logout
      session.clear
    end
  end

end
