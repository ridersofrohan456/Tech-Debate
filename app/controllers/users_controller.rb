class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    render 'show'
  end

  private

  def user_params
    params.require(:user).permit(:name, :about)
  end
end
