class RenameColumnsToContents < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :media, :media_id
    rename_column :contents, :type, :form_id
    change_column :contents, :form_id, 'integer USING CAST(form_id AS integer)'
  end
end
