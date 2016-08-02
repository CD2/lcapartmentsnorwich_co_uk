class Admin::ApartmentsController < AdminController

  before_action :set_apartment, only: [:edit, :update, :destroy]

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save!
      flash[:success] = "Apartment Created"
      redirect_to @apartment
    else
      render :new
    end
  end

  def edit
  end

  def update
    @apartment.assign_attributes(apartment_params)
    if @apartment.save!
      @apartment.process_images params[:apartment][:new_apartment_images]
      flash[:success] = "Apartment Updated"
      redirect_to admin_apartments_path
    else
      render :edit
    end
  end

  def destroy
    @apartment.destroy!
    flash[:success] = "Apartment Destroyed"
    redirect_to admin_apartments_path
  end


  private

  def apartment_params
    params.require(:apartment).permit(:name, :body, :summary, :order, :information, :maps_embed_code, :new_apartment_images, apartment_images_attributes: [:id, :image, :_destroy])
  end

  def set_apartment
    @apartment = Apartment.get_from_url(params[:id])
  end

end
