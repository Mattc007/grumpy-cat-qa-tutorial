class UsersController < ApplicationController
  before_filter :find_user, only: [:show, :edit, :update]

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Group was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

  def user_params
    params[:user].permit(:name, :email, :location, :about)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
