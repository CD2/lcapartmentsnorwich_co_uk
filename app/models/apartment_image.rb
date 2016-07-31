class ApartmentImage < ApplicationRecord

  mount_uploader :image, ImageUploader
  belongs_to :apartment

end
