class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :description
      t.integer :quantity_wanted
      t.integer :quantity_received
      t.string :item_url
      t.integer :vendor_id
      t.string :image_url
      t.integer :user_id

      t.timestamps

    end
  end
end
