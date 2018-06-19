class CreateCreatorBelongsToCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :creator_belongs_to_collections do |t|
      t.integer :position_id
      t.integer :creator_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
