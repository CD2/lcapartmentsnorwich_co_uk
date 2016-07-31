class CreateApartmentPages < ActiveRecord::Migration[5.0]
  def change
    create_table :apartment_pages do |t|
      t.belongs_to :apartment, foreign_key: true
      t.belongs_to :page, foreign_key: true

      t.timestamps
    end
  end
end
