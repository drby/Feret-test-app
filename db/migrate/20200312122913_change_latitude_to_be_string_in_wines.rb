class ChangeLatitudeToBeStringInWines < ActiveRecord::Migration[5.2]
  def change
    change_column :wines, :latitude, :string
  end
end
