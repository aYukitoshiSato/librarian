class DestroyFormModel < ActiveRecord::Migration[5.2]
  def change
    drop_table :forms
  end
end
