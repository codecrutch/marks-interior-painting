class Estimate
  include ActiveModel::Model

  validates_presence_of :customer_name, :contact, :inquiry

  attr_accessor :customer_name, :contact, :inquiry
end
