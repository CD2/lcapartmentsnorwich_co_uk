module ApplicationHelper

  def page_title title
    if title.blank?
      'Luxury City Apartments'
    else
      title
    end
  end

end
