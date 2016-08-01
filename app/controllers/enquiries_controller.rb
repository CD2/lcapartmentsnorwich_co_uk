class EnquiriesController < ApplicationController

    def new
      @page = Page.find_by(contact: true)
      @enquiry = Enquiry.new
    end

    def create
      @enquiry = Enquiry.new(enquiry_params)

      if @enquiry.save
        redirect_to thanks_enquiries_path
      else
        render :new
      end
    end

    def thanks
      @page = Page.find_by(contact: true)
    end

    private

    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :body)
    end
end
