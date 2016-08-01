class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.text :information
      t.text :body
      t.text :summary

      t.text :information
      t.string :maps_embed_code

      t.timestamps
    end
  end
end
