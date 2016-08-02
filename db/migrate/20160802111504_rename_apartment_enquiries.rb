class RenameApartmentEnquiries < ActiveRecord::Migration[5.0]
  def change

    drop_table :enquiries
    rename_table :apartment_enquiries, :enquiries

  end
end
