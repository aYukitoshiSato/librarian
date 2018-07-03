class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
      t.integer :type_maker
      t.string :name

      t.timestamps
    end
  end
end
