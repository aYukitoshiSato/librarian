class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :title
      t.integer :format_id
      t.integer :content_id

      t.timestamps
    end
  end
end
