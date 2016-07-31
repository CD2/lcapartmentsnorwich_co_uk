class MetaData < ApplicationRecord
  belongs_to :meta, polymorphic: true
end
