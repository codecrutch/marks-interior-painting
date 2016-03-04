class TestimonialsController < ApplicationController
  before_filter :authenticate_admin!
  before_action :set_testimonial, only: [:show,:edit,:destroy]

  def index
    @testimonials = Testimonial.all
  end

  def show
  end

  def edit
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.create(testimonial_params)

    if @testimonial.save
      redirect_to @testimonial
    else
      render :new
    end
  end

  def update

    @testimonial = Testimonial.find(set_testimonial)
    if @testimonial.update_attributes(testimonial_params)
      redirect_to @testimonial
    else
      render :edit
    end
  end

  def destroy
    @testimonial.destroy!
    redirect_to testimonials_path
  end

  private

  def set_testimonial
    @testimonial = Testimonial.find(params[:id])
  end

  def testimonial_params
    params.require(:testimonial).permit(:content, :customer_name)
  end
end
