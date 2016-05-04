# Preview all emails at http://localhost:3000/rails/mailers/estimate_mailer
class EstimateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/estimate_mailer/new_estimate_notification
  def new_estimate_notification
    EstimateMailer.new_estimate_notification
  end

end
