class PagesController < ApplicationController

  def home
    @page = Page.find_by(home: true)
  end

  def show
    @page = Page.get_from_url(params[:id])
  end

  def sitemap
  @pages = Page.all
  @appartments = Apartment.all
  respond_to do |format|
    format.xml
  end
end

end
