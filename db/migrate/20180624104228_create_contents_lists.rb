class CreateContentsLists < ActiveRecord::Migration[5.2]
  def change
    create_table :contents_lists do |t|
      t.integer :list_id
      t.integer :content_id

      t.timestamps
    end
  end
end
