class ApartmentEnquiriesController < ApplicationController

    def create
      @enquiry = ApartmentEnquiry.new(enquiry_params)
      @apartment = @enquiry.apartment
      if @enquiry.save
        redirect_to @apartment
      else
        render @apartment
      end
    end

    private

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:apartment_enquiry).permit(:name, :email, :phone, :date_to, :date_from, :body, :apartment_id)
    end
end

