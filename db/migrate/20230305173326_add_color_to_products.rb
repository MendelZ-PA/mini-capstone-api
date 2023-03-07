class AddColorToProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :decimal, precision: 9, scale: 2
    change_column :products, :description, :text
    change_column :products, :image_url, :text
    add_column :products, :inventory, :integer
  end
end
