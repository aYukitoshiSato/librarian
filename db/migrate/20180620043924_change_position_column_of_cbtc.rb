class ChangePositionColumnOfCbtc < ActiveRecord::Migration[5.2]
  def change
    rename_column :creator_belongs_to_collections, :position_id, :position
  end
end
