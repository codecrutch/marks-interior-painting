FactoryGirl.define do
  factory :admin do
    email "test@tester.com"
    password "bazinga"
    admin true
  end
end
