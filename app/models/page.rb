class Page < ApplicationRecord
  include MetaDataConcern
  has_many :apartment_pages
  has_many :apartments, :through => :apartment_pages

  scope :menu_pages, -> {where(in_menu: true)}


  mount_uploader :banner, ImageUploader



end
