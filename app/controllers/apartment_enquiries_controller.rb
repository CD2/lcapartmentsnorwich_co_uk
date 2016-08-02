class ApartmentEnquiriesController < ApplicationController

    def new
      @page = Page.get_from_url('apartment-enquiries')
      @enquiry = ApartmentEnquiry.new
    end

    def create
      @enquiry = ApartmentEnquiry.new(enquiry_params)
      @page = Page.get_from_url('apartment-enquiries')
      @apartment = @enquiry.apartment
      byebug
      if @enquiry.save

        redirect_to url_for(params[:referer]) || @apartment || root_url
      else
        render :new
      end
    end

    private

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:apartment_enquiry).permit(:name, :email, :phone, :date_to, :date_from, :body, :apartment_id)
    end
end

