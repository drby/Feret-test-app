class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :country
      t.string :description
      t.string :designation
      t.float :points
      t.float :price
      t.string :province
      t.string :region_1
      t.string :region_2
      t.string :variety
      t.string :province
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
