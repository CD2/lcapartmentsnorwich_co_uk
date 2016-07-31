module ApplicationHelper

  def page_title title
    if title.blank?
      'Luxury City Apartments'
    else
      title
    end
  end

  def main_menu_items
    Page.menu_pages.map {|p| [p.name, p.url_alias]}
  end

end
