class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
  	@listing = Listing.new(params[:listing])
  	if @listing.save
  	  redirect_to listing_path(@listing)
  	else
  	  redirect_to "/"
  	end
  end
end
