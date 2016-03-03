class RemoveNameFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :name, :string
  end
end
