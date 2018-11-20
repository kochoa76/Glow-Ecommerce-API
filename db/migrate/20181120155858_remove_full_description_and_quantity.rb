class RemoveFullDescriptionAndQuantity < ActiveRecord::Migration[5.2]
  def change
    remove_column :makeups, :fullDescription, :text
    remove_column :makeups, :quantity, :integer
  end
end
