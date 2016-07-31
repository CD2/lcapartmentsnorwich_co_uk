class PagesController < ApplicationController

  def home
    @page = Page.find_by(home: true)
  end

  def show
    @page = Page.get_from_url(params[:id])
  end

end
