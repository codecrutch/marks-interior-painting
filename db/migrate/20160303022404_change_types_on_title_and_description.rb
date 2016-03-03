class ChangeTypesOnTitleAndDescription < ActiveRecord::Migration
  def change
    change_column :photos, :title, :string
    change_column :photos, :description, :text
  end
end
