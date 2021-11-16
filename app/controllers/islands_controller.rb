class IslandsController < ApplicationController
  before_action :find_island, only: [:show]

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
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def show
  end


  private

  def island_params
    params.require(:island).permit(:name, :location, :description, :availability, :photo)
  end

  def find_island
    @island = Island.find(params[:id])
  end
end
