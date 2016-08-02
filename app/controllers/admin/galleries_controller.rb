class Admin::GalleriesController < AdminController

  def index
    @images = GalleryImage.all
  end

  def create
    params[:gallery_image][:image].each do |gallery_image|
      GalleryImage.create(image: gallery_image)
    end
    flash[:success] = "Image Uploaded"
    redirect_to admin_galleries_path
  end

  def destroy
    GalleryImage.find(params[:id]).destroy!
    flash[:success] = "Image Destroyed"
    redirect_to admin_galleries_path
  end

  private

    def gallery_params
      params.require(:gallery_image).permit(:image)
    end




end
