class IslandsController < ApplicationController

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save!
      redirect_to islands_path
    else
      render :new
    end
  end


  private

  def island_params
    params.require(:island).permit(:name, :location, :description, :availability, :photo)
  end
end
