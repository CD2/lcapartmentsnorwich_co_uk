class GalleryController < ApplicationController
  
  def index
    @page = Page.get_from_url('visit-norwich')
    @images = GalleryImage.all
  end

end
