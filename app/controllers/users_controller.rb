class UsersController < ApplicationController
  def index
    @user = User.all
    
    # @response = Yelp.client.search('90 John Street, New York, NY', {term:'spanish',limit:10}, radius_filter:'1600')
    # @shops = @response.businesses

    current_user = User.find_by_id(session[:current_user_id])
  end

  # def search
  #   render json: Yelp.client.search('New York')
  # end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = "Profile created successfully"
      redirect_to user_path(@user)
    else
      flash[:alert] = "Sorry, something went wrong."
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
    
  end

  def edit
    @user = User.find(params[:id])
  end




  def destroy
  	@user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :fname, :lname, :phone)
    
  end
end
