class LoginController < ApplicationController

  def index
  end

  def create
    @admin = Admin.find_by(params[:username])

    if @admin.authenticate(params[:login][:password])
      redirect_to root_path
    else
      redirect_to '/entries'
    end
  end

  private

  def strong_params
    params.require(:login).permit(:username, :password)
  end
end
