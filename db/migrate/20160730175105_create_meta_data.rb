class CreateMetaData < ActiveRecord::Migration[5.0]
  def change
    create_table :meta_data do |t|
      t.string :title
      t.string :url_alias
      t.text :description
      t.string :meta_type
      t.integer :meta_id

      t.timestamps
    end
  end
end
