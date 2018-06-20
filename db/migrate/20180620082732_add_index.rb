class AddIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :collections, :content_id
    add_index :creator_belongs_to_collections, :collection_id
  end
end
