class ChangeDefaultOfPriceInIslands < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:islands, :price, nil)
  end
end
