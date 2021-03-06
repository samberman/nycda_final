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
   # @type = type.all
    # @locations = Location.all
    # if params[:search].present?
    #   @locations = Location.near(params[:search], 50, :order => :distance)
    #   redirect_to location_path(params[:id])
    # else
    #   @locations = Location.all
    # end

    #responseis being shown 
    @response = params[:response]
    if @response
      print "This is working"
    else 
      print "not working"
    end
   
  end

  def search
    if params[:id]
      @i = params[:id].to_i + 1
      print @i
      @response = params[:response]
      print @response
      respond_to do |format|
        format.js
      end
    else
      @i = 0
      parameters = { term: params[:term], radius_filter: params[:radius_filter] }
      # current_location = { current_location: params[:current_location]}
      # API call, search params are being defined
      @current_location = params[:current_location]
      @response = Yelp.client.search(params[:current_location], parameters )
      # category_filter: 'food'}
      # render json: Yelp.client.search(params[:current_location], params)
      # render locations_path(@response)
      # redirect_to action: "index", response: @response 
    end
  end

  def new
    @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
    # @distance = Geocoder::Calculations.distance_between
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
 
  # def client
  #   @client ||= Yelp::Client.new({ consumer_key: ENV['CONSUMER_KEY'],
  #     consumer_secret: ENV['CONSUMER_SECRET'],
  #     token: ENV['TOKEN'],
  #     token_secret: ENV['TOKEN_SECRET']
  #   })
  # end
end
