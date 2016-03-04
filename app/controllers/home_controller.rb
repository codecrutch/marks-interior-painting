class HomeController < ApplicationController
  def index
    @photos = Photo.all
    @testimonials = Testimonial.all
  end
end
