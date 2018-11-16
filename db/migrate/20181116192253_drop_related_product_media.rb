class DropRelatedProductMedia < ActiveRecord::Migration[5.2]
  def change
    drop_table :related_product_media
  end
end
