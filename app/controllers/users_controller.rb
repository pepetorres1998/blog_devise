class UsersController < ApplicationController
  #require 'pry'
  #binding.pry
  before_action :set_user, only: [:show, :destroy]
  before_action :require_admin, only: [:index, :destroy]

  def show
  end

  def index
    @users = User.all
  end

  def destroy
    if @user.destroy
      redirect_to users_path, notice: "User deleted"
    else
      redirect_to users_path, flash: "User could not be deleted"
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
