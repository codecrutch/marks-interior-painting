class AddTitleToPhotos < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.text :title
    end
  end
end
