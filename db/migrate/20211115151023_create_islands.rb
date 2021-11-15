class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :location
      t.string :photo
      t.text :description
      t.date :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
