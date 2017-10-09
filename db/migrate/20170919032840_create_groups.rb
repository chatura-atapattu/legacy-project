class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :donation_url
      t.string :homepage_banner_image
      t.string :logo_image
      t.string :favicon_image
      t.string :favicon_image_16_by_16
      t.string :favicon_image_32_by_32
      t.timestamps
    end
  end
end
