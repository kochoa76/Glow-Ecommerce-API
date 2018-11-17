class AddNameAndCityToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :city, :string
  end
end
