class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :type
      t.string :title
      t.integer :circle
      t.integer :rating
      t.date :release_date
      t.integer :price
      t.string :cover_image
      t.integer :media
      t.integer :event_first

      t.timestamps
    end
  end
end
