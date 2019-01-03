class UsersController < ApplicationController
  #require 'pry'
  #binding.pry
  before_action :set_user, only: :show
  before_action :require_admin, only: [:index, :show]

  def show
  end

  def index
    @users = User.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
