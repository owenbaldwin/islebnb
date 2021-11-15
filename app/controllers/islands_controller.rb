class IslandsController < ApplicationController

  def index
    @islands = Island.all
  end 
 
  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end


  private

  def island_params
    params.require(:island).permit(:name, :location, :description, :availability)
  end
end
 
