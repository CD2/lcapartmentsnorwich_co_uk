class BannerImage < ApplicationRecord
  belongs_to :page

  mount_uploader :image, ImageUploader


end