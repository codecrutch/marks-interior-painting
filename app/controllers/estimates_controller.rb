class EstimatesController < ApplicationController
  def new
    @estimate = Estimate.new
  end

  def create
    @estimate = Estimate.new(estimate_params)

    if @estimate.valid?
      EstimateMailer.new_estimate_notification(@estimate).deliver
      redirect_to root_path, notice: 'Request Sent Successfully!'
    else
      render :new
    end
  end

  private

  def estimate_params
    params.require(:estimate).permit(:customer_name, :contact, :inquiry)
  end
end
