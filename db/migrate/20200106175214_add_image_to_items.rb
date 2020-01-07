class AddImageToItems < ActiveRecord::Migration
  def change
    add_column :items, :image, :integer
  end
end
