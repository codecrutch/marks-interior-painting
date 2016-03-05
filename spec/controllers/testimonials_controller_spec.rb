require 'rails_helper'

RSpec.describe TestimonialsController, type: :controller do

  describe "GET #index" do
    it "blocks unauthenticated access" do
      sign_in nil
      get :index
      expect(response).to redirect_to(new_admin_session_path)
    end
    it "returns http success" do
      sign_in
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:testimonial) { Testimonial.new }
    it "returns http success" do
      testimonial.customer_name = 'sean'
      testimonial.content = 'the programmer'
      testimonial.id = 1
      testimonial.save
      sign_in
      get :show, id: 1
      expect(response).to have_http_status(:success)
    end

    it 'redirects to login if not signed in' do
      testimonial.customer_name = 'sean'
      testimonial.content = 'the programmer'
      testimonial.id = 1
      testimonial.save
      sign_in nil
      get :show, id: 1
      expect(response).to redirect_to new_admin_session_path 
    end
  end

  describe "GET #edit" do
    let(:testimonial) { Testimonial.new }
    it "returns http success" do
      testimonial.customer_name = 'tester'
      testimonial.content = 'test content'
      testimonial.id = 1
      testimonial.save

      sign_in
      get :edit, id: 1
      expect(response).to have_http_status 200 
    end
    it "blocks unauthenticated access" do
      testimonial.customer_name = 'tester'
      testimonial.content = 'test content'
      testimonial.id = 1
      testimonial.save

      sign_in nil
      get :edit, id: 1
      expect(response).to redirect_to(new_admin_session_path)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      sign_in
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
