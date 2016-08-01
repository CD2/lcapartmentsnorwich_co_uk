class ApartmentEnquiriesController < ApplicationController

    def create
      @enquiry = Enquiry.new(enquiry_params)

      if @enquiry.save
        redirect_to contact_us_thanks_path
      else
        render :new
      end
    end

    def thanks
      @page = Page.find_by(machine_name: 'contact_us')
    end

    private

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :phone, :date_to, :date_from, :body, :apartment_id)
    end
end

