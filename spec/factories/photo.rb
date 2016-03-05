FactoryGirl.define do
  factory :photo do
    title "My Amazing Room"
    description "Painting a victorian room with earth tones"
    image File.new(Rails.root + "spec/factories/images/rails.png")
  end
end
