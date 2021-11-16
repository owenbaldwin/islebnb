class UsersController < ApplicationController
  def show
    @user = current_user
    @islands = Island.where(params[:user_id])
  end
end
