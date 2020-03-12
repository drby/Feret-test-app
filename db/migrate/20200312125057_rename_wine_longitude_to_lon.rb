class RenameWineLongitudeToLon < ActiveRecord::Migration[5.2]
  def change
    rename_column :wines, :longitude, :lon
  end
end
