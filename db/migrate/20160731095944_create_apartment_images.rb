class CreateApartmentImages < ActiveRecord::Migration[5.0]
  def change
    create_table :apartment_images do |t|
      t.string :image
      t.integer :apartment_id

      t.timestamps
    end
  end
end
