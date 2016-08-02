class BannerImage < ApplicationRecord

  belongs_to :page
  default_scope -> {where("image <> ?", '')}
  mount_uploader :image, ImageUploader

end
