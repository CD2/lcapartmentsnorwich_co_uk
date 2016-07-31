class Apartment < ApplicationRecord

  has_one :meta_data, as: :meta
  has_many :apartment_images

  delegate :url_alias, to: :meta_data

  def cover_image
    if apartment_images.any?
      apartment_images.first.image
    end
  end

end
