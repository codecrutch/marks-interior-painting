require 'rails_helper'

RSpec.describe TestimonialsController, type: :controller do

  describe "GET #index" do
    it 'redirects to login if not signed in' do
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
    before :each do
      @testimonial = FactoryGirl.create(:testimonial)
    end

    it 'redirects to login if not signed in' do
      sign_in nil
      get :show, id: @testimonial.id
      expect(response).to redirect_to new_admin_session_path 
    end

    it "returns http success" do
      sign_in
      get :show, id: @testimonial.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    before :each do
      @testimonial = FactoryGirl.create(:testimonial)
    end

    it 'redirects to login if not signed in' do
      sign_in nil
      get :edit, id: @testimonial.id
      expect(response).to redirect_to(new_admin_session_path)
    end

    it "returns http success" do
      sign_in
      get :edit, id: @testimonial.id
      expect(response).to have_http_status 200 
    end
  end

  describe "GET #new" do
    it 'redirects to login if not signed in' do
      sign_in nil
      get :new
      expect(response).to redirect_to(new_admin_session_path)
    end

    it "returns http success" do
      sign_in
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
