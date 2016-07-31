class Page < ApplicationRecord

  has_many :apartment_pages
  has_many :apartments, :through => :apartment_pages

  has_one :meta_data, as: :meta
  delegate :url_alias, to: :meta_data

  scope :menu_pages, -> {where(in_menu: true)}

  accepts_nested_attributes_for :meta_data

  mount_uploader :banner, ImageUploader

  def self.get_from_url url_alias
    MetaData.find_by(url_alias: url_alias).meta
  end

  def to_param
    meta_data.url_alias || super
  end

end
