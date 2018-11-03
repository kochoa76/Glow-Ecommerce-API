class CreateRelatedProductMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :related_product_media do |t|
      t.string :link_url

      t.timestamps
    end
  end
end
