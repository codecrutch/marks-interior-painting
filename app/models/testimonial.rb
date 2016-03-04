class Testimonial < ActiveRecord::Base
  validates_presence_of :content, :customer_name
end
