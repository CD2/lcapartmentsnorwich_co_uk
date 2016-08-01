class ApartmentEnquiries < ActiveRecord::Migration[5.0]
  def change

    create_table :apartment_enquiries do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.datetime :data_to
      t.datetime :data_from
      t.text :body
      t.belongs_to :apartment

      t.timestamps
    end
  end
end
