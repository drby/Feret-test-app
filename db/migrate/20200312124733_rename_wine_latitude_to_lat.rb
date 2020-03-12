class RenameWineLatitudeToLat < ActiveRecord::Migration[5.2]
  def change
    rename_column :wines, :latitude, :lat
  end
end
