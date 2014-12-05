class BandsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  helper_method :bands, :band

  respond_to :json, only: [:index, :create, :update, :destroy]
  respond_to :html, only: [:index]

  def index
    respond_to do |format|
      format.html { bands }
      format.json { render json: bands, status: 200 }
    end  
  end

  def show
  	band = Band.find(params[:id])
    render json: band, status: 200
  end

  def create
  	band = Band.new(band_params)
  	if band.save
  	  render json: band, status: 201, location: band
  	else
  	  render json: band.errors, status: 422
  	end
  end

  def update
    band = Band.find(params[:id])
    band.update_attributes(band_params)
    respond_with(band) do |format|
      format.json { render json: band}
    end
    #if band.update_attributes(band_params)
     # render json: band, status: 204, location: band
   # else
      #render json: band.errors, status: 422 
    #end
  end

  def destroy
  	band = Band.find(params[:id])
  	band.destroy!
  	render nothing: true, status: 204
  end

  private
  def band_params
  	#params.require(:band).permit(:name)
    params.permit(:name)
    #params.slice(:name).permit!
  end

  def bands
  	@_bands||= Band.all
  end

  def band
  	@_band ||= bands.find(params[:id])
  end
end
