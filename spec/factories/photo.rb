FactoryGirl.define do
  factory :photo do
    title "My Amazing Room"
    description "Painting a victorian room with earth tones"
    image_file_name { "2.png" }
    image_content_type { "image/png" }
    image_file_size { 2000 }
  end
end
