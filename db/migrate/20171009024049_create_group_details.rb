class CreateGroupDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :group_details do |t|
      t.references :group
      t.text :about_us
      t.text :initiatives

      t.timestamps
    end
  end
end
