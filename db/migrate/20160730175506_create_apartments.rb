class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.text :body
      t.text :summary
      t.integer :apartment_type

      t.timestamps
    end
  end
end
