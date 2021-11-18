class IslandsController < ApplicationController
  before_action :find_island, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @islands = Island.search_by_name_and_location(params[:query])
    else
      @islands = Island.all
    end
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
