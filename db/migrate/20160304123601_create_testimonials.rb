class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :content
      t.string :customer_name

      t.timestamps null: false
    end
  end
end
