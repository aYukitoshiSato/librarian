class AddNoToCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :No, :integer
  end
end
