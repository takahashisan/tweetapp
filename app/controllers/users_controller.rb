class UsersController < ApplicationController
  def index
    @users = User.page(params[:id]).per(50).order(created_at: :desc)
  end

  def show
  	 @user = User.find(params[:id])
  end


end
