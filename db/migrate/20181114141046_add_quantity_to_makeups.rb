class AddQuantityToMakeups < ActiveRecord::Migration[5.2]
  def change
    add_column :makeups, :quantity, :integer
  end
end
