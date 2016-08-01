class ApartmentsController < ApplicationController

  def show
    @apartment = Apartment.get_from_url(params[:id])
  end

end
