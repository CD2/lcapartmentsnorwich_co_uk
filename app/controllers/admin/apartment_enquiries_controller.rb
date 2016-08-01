class Admin::ApartmentEnquiriesController < AdminController

  before_action :set_apartment
  before_action :set_enquiry, only: [:show, :destroy]

  def index
    @enquiries = @apartment.apartment_enquiries
  end

  def show
  end

  def destroy
    @enquiry.destroy!
    flash[:success] = "Apartment Destroyed"
    redirect_to admin_apartments_path
  end


  private

  def set_apartment
    @apartment = Apartment.get_from_url(params[:apartment_id])
  end

  def set_enquiry
    @enquiry = @apartment.apartment_enquiries.find(params[:id])
  end

end
