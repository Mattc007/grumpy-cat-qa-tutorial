class UsersController < ApplicationController
  before_filter :find_user, only: [:show, :edit, :update]

  private

  def user_params
    params[:user].permit(:name, :email, :location, :about)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
