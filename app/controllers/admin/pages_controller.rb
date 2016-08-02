class Admin::PagesController < AdminController

  before_action :set_page, only: [:edit, :update, :destroy]

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.valid?
      @page.save!
      flash[:success] = "Page Created"
      redirect_to @page
    else
      render :new
    end
  end

  def edit
  end

  def update
    @page.assign_attributes(page_params)
    if @page.valid?
      @page.save!
      flash[:success] = "Page Updated"
      redirect_to admin_pages_path
    else
      render :edit
    end
  end

  def destroy
    @page.destroy!
    flash[:success] = "Page Destroyed"
    redirect_to admin_pages_path
  end


  private

  def page_params
    params.require(:page).permit(:name, :body, :banner, :contact_form,
      new_banner_images: [], apartment_ids: [],
      meta_data_attributes: [:id, :title, :description, :url_alias], 
      banner_images_attributes: [:id, :image, :_destroy])
  end

  def set_page
    @page = Page.get_from_url(params[:id])
  end

end
