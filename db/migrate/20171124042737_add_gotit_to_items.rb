class AddGotitToItems < ActiveRecord::Migration
  def change
    add_column :items, :gotit, :boolean, null: false, default: false
  end
end
