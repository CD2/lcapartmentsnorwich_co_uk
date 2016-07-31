class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|

      t.string :name
      t.text :body
      t.string :banner

      t.boolean :in_menu, default: false

      t.boolean :home, default: false
      t.boolean :blog, default: false
      t.boolean :contact, default: false

      t.timestamps
    end
  end
end
