class AddColumnToMakeups < ActiveRecord::Migration[5.2]
  def change
    add_column :makeups, :fullDescription, :text
  end
end
