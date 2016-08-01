class ApartmentEnquiries < ActiveRecord::Migration[5.0]
  def change

    create_table :apartment_enquiries do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.datetime :date_to
      t.datetime :date_from
      t.text :body
      t.integer :apartment_id

      t.timestamps
    end
  end
end
