class ChangeColumnOfContents < ActiveRecord::Migration[5.2]
  def change
    rename_column :contents, :form_id, :form
  end
end
