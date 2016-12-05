class UsersController < ApplicationController
  before_action :authorize, only: [:edit, :update, :logout]
  before_action :correct_user, only: [:edit, :update, :logout]

  def index
    @users = User.all
    if params[:search]
      @locations = Location.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @locations = Location.all.order("name").page(params[:page]).per(10)
      flash[:notice] = "No results match search"
    end
    if params[:search]
      @searched_users = User.search(params[:search]).order("created_at DESC").page(params[:page]).per(20)
    else
      @searched_users = User.all.order("name").page(params[:page]).per(20)
      flash[:notice] = "We couldn't find #{params[:search]}."
    end
  end

  def show
    @user = User.find(params[:id])
    @locations = @user.locations
    @frequently_visited_locations = @locations.order("name").page(params[:page]).per(10)
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up"
      redirect_to root_path
    else
      render 'new'
    end
end

  def update
    if @user.update(user_params)
      redirect_to user_path
      flash[:notice] = "Updated Profile"
    else
      redirect_to edit_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :current_city, :current_state, :current_country, :password, :password_confirmation, :bio)
  end

  def location_params
    params.require(:location).permit(:address, :latitude, :longitude, :user_id, :gmaps)
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end

end
