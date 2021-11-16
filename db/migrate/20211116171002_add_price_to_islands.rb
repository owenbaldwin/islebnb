class AddPriceToIslands < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :price, :string, default: "Price on Request"
  end
end
