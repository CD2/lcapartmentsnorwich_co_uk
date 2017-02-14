class Admin::EnquiriesController < AdminController

  before_action :set_apartment
  before_action :set_enquiry, only: [:show, :destroy]

  def index
    @enquiries = enquiry_base.all
  end

  def show
  end

  def destroy
    @enquiry.destroy!
    flash[:success] = "Enquiry Destroyed"
    redirect_to admin_enquiries_path
  end

  private

    def enquiry_base
      (@apartment&.enquiries || Enquiry)
    end

    def set_apartment
      @apartment = Apartment.get_from_url(params[:apartment_id]) rescue nil
    end

    def set_enquiry
      @enquiry = enquiry_base.find params[:id]
    end


end
