class SessionsController < ApplicationController
  def new
  	current_user = User.find_by_id(session[:current_user_id])
  end

  def create
  	@user = User.find_by_email(params[:email])
		if @user and @user.password == params[:password]
			session[:user_id] = @user.id
			flash[:notice] = "You have logged in successfully."
		redirect_to locations_path
		else
			flash[:alert] = "Sorry, you are not logged in."
			redirect_to root_path
		end
  end

  def destroy
  	session[:user_id] = nil
			# @user = user.destroy
			flash[:notice] = "You are now logged out."
			redirect_to sessions_new_path
  end
end
