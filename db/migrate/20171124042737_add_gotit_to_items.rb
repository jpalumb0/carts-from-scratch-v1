class AddGotitToItems < ActiveRecord::Migration
  def change
    add_column :items, :gotit, :boolean
  end
end
