class UsersController < ApplicationController
  def show
    @user = current_user
    @islands = @user.islands
    @bookings = @user.bookings
  end
end
