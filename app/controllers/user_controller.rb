class UserController < ApplicationController
  def registrate
    
  end

  def create
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save
      redirect_to '/user/login'
    else
      redirect_to :back
    end
  end

  def login
  end
  
  def sign_in
    if user = User.find_by(email: params[:email])
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/book/shelf'
      else
        flash[:login] = "You enter the worng password."
        redirect_to :back
      end
    else
      flash[:login] = "NO Email."
      redirect_to :back
    end
  end
  
  def sign_out
    session.delete(:user_id)
    redirect_to '/'
  end
  
end
