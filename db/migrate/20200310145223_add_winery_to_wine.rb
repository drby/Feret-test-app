class AddWineryToWine < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :winery, :text
  end
end
