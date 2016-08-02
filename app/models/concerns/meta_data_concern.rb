module MetaDataConcern
  extend ActiveSupport::Concern

  included do

    has_one :meta_data, as: :meta, autosave: true, dependent: :destroy
    delegate :url_alias, to: :meta_data
    accepts_nested_attributes_for :meta_data

    before_create do
      meta_data
    end

    def to_param
      meta_data.url_alias || super
    end

    def meta_data
      super || build_meta_data
    end

  end

  class_methods do
    
    def get_from_url url_alias
      MetaData.where(meta_type: self.name, url_alias: url_alias).first.meta rescue nil
    end
    
  end

end
