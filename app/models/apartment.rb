class Apartment < ApplicationRecord

  has_one :meta_data, as: :meta
  has_many :apartment_images

  has_many :apartment_pages
  has_many :pages, through: :apartment_pages
  
  delegate :url_alias, to: :meta_data

  def cover_image
    if apartment_images.any?
      apartment_images.first.image
    end
  end

end
