require 'rails_helper'

RSpec.describe Testimonial, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:testimonial)).to be_valid
  end
  it 'is invalid without content' do
    expect(FactoryGirl.build(:testimonial, content: nil)).to be_invalid
  end
  it 'is invalid without cutomer name' do
    expect(FactoryGirl.build(:testimonial, customer_name: nil)).to be_invalid
  end
end
