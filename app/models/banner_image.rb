class BannerImage < ApplicationRecord

  belongs_to :page
  default_scope -> {where.not(image: '')}
  mount_uploader :image, ImageUploader

end
