class AddOrderToApartments < ActiveRecord::Migration[5.0]
  def change

    add_column :apartments, :order, :integer

  end
end
