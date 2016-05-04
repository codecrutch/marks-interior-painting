class EstimateMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.estimate_mailer.new_estimate_notification.subject
  #
  default :from => "admin@marksinteriorpainting.com"

  def new_estimate_notification(estimate)
    @estimate = estimate
    @greeting = "Mark, a new estimate request has been submitted online."

    mail(to: "markcentola@marksinteriorpainting.com", subject: "Job Estimate Request")
  end
end
