class LocationsController < ApplicationController
  
  def create
  	@location = Location.new(location_params)
    coordinates = Geocoder.coordinates(@location.address)
    @location.latitude = coordinates[0]
    @location.longitude = coordinates[1]
    # binding.pry
    if @location.save
      flash[:notice] = "location saved"
      redirect_to location_path(@location)
    else
      flash[:alert] = "location is not saved"
      render :new
    end
  end

  def update
  	
  end

  def edit
  end

  def index
    # if params[:search].present?
    # @locations = Location.near(params[:search], 50, :order => :distance)
    # redirect_to location_path(params[:id])
    # else
    #   @locations = Location.all
    # end

    @locations = Location.all
    if params[:search].present?
      @locations = Location.near(params[:search], 50, :order => :distance)
      redirect_to location_path(params[:id])
    else
      @locations = Location.all
    end
  end

  def new
    @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
  end

  def destroy
  	@location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end
end
