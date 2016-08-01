class Admin::EnquiriesController < AdminController
  before_action :set_enquiry, only: [:show, :destroy]

  def index
    @enquiries = Enquiry.all
  end

  def show
  end

  def destroy
    @enquiry.destroy!
    flash[:success] = "Enquiry Destroyed"
    redirect_to admin_enquirys_path
  end

  private

    def set_enquiry
      @enquiry = Enquiry.find_enquiry params[:id]
    end

    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :body)
    end

end