class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_name(params[:name])
    if @user
      if session[:first_user_id]
        session[:second_user_id] = @user.id
      else
        session[:first_user_id] = @user.id
      end
      redirect_to "/problems", notice: "#{@user.name} logged in "
    else
      redirect_to "/login", notice: "invalid name"
    end
  end

  def destroy
    reset_session
    redirect_to "/login"
  end
end
