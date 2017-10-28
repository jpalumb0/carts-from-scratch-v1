class ChangeUseridtoCartidinItems < ActiveRecord::Migration
  def change
    rename_column :items, :user_id, :cart_id
  end
end
