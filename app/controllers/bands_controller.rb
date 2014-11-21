class BandsController < ApplicationController
  helper_method :bands, :band
  def bands
  	@_bands||= Band.all
  end

  def band
  	@_band ||= bands.find(params[:id])
  end
end
