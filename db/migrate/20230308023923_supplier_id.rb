class SupplierId < ActiveRecord::Migration[7.0]
  def change
    add_column :supplier, :supplier_id, :integer
  end
end
