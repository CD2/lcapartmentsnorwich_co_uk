class Page < ApplicationRecord
  has_one :meta_data, as: :meta
  delegate :url_alias, to: :meta_data

  scope :menu_pages, -> {where(in_menu: true)}

  mount_uploader :banner, ImageUploader

  def self.get_from_url url_alias
    MetaData.find_by(url_alias: url_alias).meta
  end

end
