class CreateSecondaryPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :secondary_photos do |t|
      t.string :link

      t.timestamps
    end
  end
end
