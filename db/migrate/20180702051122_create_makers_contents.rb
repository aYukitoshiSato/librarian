class CreateMakersContents < ActiveRecord::Migration[5.2]
  def change
    create_table :makers_contents do |t|
      t.integer :content_id
      t.integer :maker_id

      t.timestamps
    end
  end
end
