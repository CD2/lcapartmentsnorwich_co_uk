class Blog < ApplicationRecord
  include MetaDataConcern
  has_many :banner_images, foreign_key: :page_id
  accepts_nested_attributes_for :banner_images, allow_destroy: true
  def new_banner_images= images
    (images || []).each do |image|
      self.banner_images.create!(image: image)
    end
  end

  def banner
    banner_images.first&.image
  end

  delegate :title, to: :meta_data, allow_nil: true
  delegate :description, to: :meta_data, allow_nil: true

end
