class MetaData < ApplicationRecord
  belongs_to :meta, polymorphic: true

  def url_alias
    if super.blank?
      meta.id.to_s
    else
      super
    end
  end

end
