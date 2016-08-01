class Apartment < ApplicationRecord
  include MetaDataConcern

  has_many :apartment_images, autosave: true
  accepts_nested_attributes_for :apartment_images, allow_destroy: true
  attr_accessor :new_apartment_images

  has_many :apartment_pages
  has_many :pages, through: :apartment_pages
  
  has_many :apartment_enquiries

  def process_images images=[]
    images.each do |image|
      self.apartment_images.create!(image: image)
    end
  end


  def cover_image
    if apartment_images.any?
      apartment_images.first.image
    end
  end

end
