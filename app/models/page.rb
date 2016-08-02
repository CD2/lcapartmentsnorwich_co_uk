class Page < ApplicationRecord
  include MetaDataConcern
  has_many :apartment_pages
  has_many :apartments, :through => :apartment_pages

  has_many :banner_images
  accepts_nested_attributes_for :banner_images

  scope :menu_pages, -> {where(in_menu: true)}


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
