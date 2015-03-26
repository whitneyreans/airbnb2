class UsersController < ApplicationController

  def index
    @user = current_user
    @listings = Listing.all
    @user_listings = @user.listings
  end
end
