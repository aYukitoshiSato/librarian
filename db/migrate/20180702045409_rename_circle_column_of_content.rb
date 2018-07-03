class RenameCircleColumnOfContent < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :circle, :maker_id
  end
end
