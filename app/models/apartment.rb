class Apartment < ApplicationRecord
  include MetaDataConcern

  has_many :apartment_images

  has_many :apartment_pages
  has_many :pages, through: :apartment_pages
  
  has_many :apartment_enquiries

  def cover_image
    if apartment_images.any?
      apartment_images.first.image
    end
  end

end
