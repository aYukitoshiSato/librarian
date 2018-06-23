class RenamePositionColumnOfCbtc < ActiveRecord::Migration[5.2]
  def change
    rename_column :creator_belongs_to_collections, :position, :position_id
  end
end
