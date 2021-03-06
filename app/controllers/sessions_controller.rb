class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(user_params)
    if user
      session[:user_id] = user.id
      flash[:success] = 'You are logged in'
      if !user.admin
        redirect_to student_path(user.id)
      else
        redirect_to students_path
      end
    else
      flash[:danger] = 'Credentials invalid, please try again'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You are logged out'
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
