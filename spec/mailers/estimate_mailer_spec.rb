require "rails_helper"

RSpec.describe EstimateMailer, type: :mailer do
  describe "new_estimate_notification" do
    let(:mail) { EstimateMailer.new_estimate_notification }

    it "renders the headers" do
      expect(mail.subject).to eq("New estimate notification")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
