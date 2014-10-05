class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :show, :update]


  def show
  end

  def edit
  end


  def update
    @user.update_attributes(user_params)
    render 'show'
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :about)
  end
end
