require "rails_helper"

RSpec.describe EstimateMailer, type: :mailer do
  describe "new_estimate_notification" do
    let(:estimate) { Estimate.new(customer_name: 'Bob', contact: '978-123-1234', inquiry: 'walls') }
    let(:mail) { EstimateMailer.new_estimate_notification(estimate) }

    it "renders the headers" do
      expect(mail.subject).to eq("Job Estimate Request")
      expect(mail.to).to eq(["markcentola@marksinteriorpainting.com"])
      expect(mail.from).to eq(["admin@marksinteriorpainting.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to_not be_empty
    end
  end

end
