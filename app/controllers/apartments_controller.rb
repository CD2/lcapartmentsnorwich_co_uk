class ApartmentsController < ApplicationController

  def show
    @apartment = Apartment.get_from_url(params[:id])
    @enquiry = @apartment.apartment_enquiries.build
  end

end
