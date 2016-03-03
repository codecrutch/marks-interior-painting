class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { normal: "2000x2000>", small: "300x300>", thumb: "100x100>" }, :url  => "/assets/photos/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :title, uniqueness: true
  validates_presence_of :title, :description, :image
end
