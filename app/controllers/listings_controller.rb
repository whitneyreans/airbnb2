class ListingsController < ApplicationController

  def show
    @user = current_user
    @listing = Listing.find(params[:id])
  end

  def new
    @user = current_user
    @listing = @user.listings.new
    @picture = @listing.pictures.new
  end

  def create
    @user = current_user
    @listing = @user.listings.new(listing_params)
    if @listing.save
      flash[:notice] = "Picture added!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

     private

  def listing_params
    params.require(:listing).permit(:title, :info, :location, :user_id)
  end
end
