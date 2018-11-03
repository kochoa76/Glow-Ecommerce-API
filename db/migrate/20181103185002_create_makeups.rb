class CreateMakeups < ActiveRecord::Migration[5.2]
  def change
    create_table :makeups do |t|
      t.string :name
      t.integer :price
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
