class AuthenticationController < ApplicationController
  def signin_get
    tweets=Tweet.includes(:user).all.order(ceated_at: :desc)
  end

  def signup_get
  end

  def signin
    email = params[:email]
    password = params[:password]
    user = User.find_by_email(email)
    if user
      if user.password == password
        session[:user_id]=user.user_id
      else
        return redirect_to '/signin'
      end
      else
        return redirect_to '/signup'
      end
  end

  def signup
    email = params[:email]
    password = params[:password]
    user = User.find_by_email(email)
    unless user
      user = User.create(email:email,password: password)
      session[:user_id] = user.id
      redirect_to '/'
    else
      return redirect_to 'signup'
    end

  end

  def logout
    session[:user_id]=nill

  end
end
