class UsersController < ApplicationController
  def show
    @user = current_user
    @islands = @user.islands
  end
end
