class SessionsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.find_by(params[:username])
    if @admin.authenticate(params[:sessions][:password])
      session[:current_user_id] = @admin.id
      redirect_to root_path
    else
      @error = "Invalid Credentials. Please try again."
      redirect_to sessions_new_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end

  private

  def strong_params
    params.require(:sessions).permit(:username, :password)
  end
end
