class IslandsController < ApplicationController
  before_action :find_island, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @islands = Island.all

    @markers = @islands.geocoded.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        info_window: render_to_string(partial: "info_window", locals: { island: island }),
        image_url: helpers.asset_url("umbrella2.png")
      }
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


# mapbox://styles/owenbaldwin/ckw4vs5vy2ntb14p4yeeyzcy8
