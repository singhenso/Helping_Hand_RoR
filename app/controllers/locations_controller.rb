class LocationsController < ApplicationController
  before_action :authorize, only: [:generate_shelters, :destroy, :logout]
  before_action :correct_user, only: [:generate_shelters, :destroy, :logout]

  def index
    @user_locations = Location.where('user_id = :user_id', user_id: user.id)
    @all_locations = @user_locations.order("name").page(params[:page]).per(10)
    if params[:search]
      @locations = Location.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @locations = Location.all.order("name").page(params[:page]).per(10)
      flash[:notice] = "No results match search"
    end
  end

  def generate_shelters
    @search_locations = Location.shelters_search(user.current_city, user.id)
    redirect_to locations_path
  end

  def show
    @location = Location.find(params[:id])
    if current_user
      @walking_distance = Location.walking_distance(user.current_city, @location.address, @location)
      @bicycling_distance = Location.bicycling_distance(user.current_city, @location.address, @location)
    end
  end

  private

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude, :user_id, :gmaps)
  end

  def user
    current_user
  end

  def correct_user
    @user = current_user
    redirect_to(root_path) unless current_user?(@user)
  end

  def user_params
    params.require(:user).permit(:current_city)
  end

  def check_if_location_belongs_to_current_user
    @user = current_user
    @location = Location.find(params[:id])
    if @location[:user_id] == @user.id
      true
    else
      false
    end
  end

end
