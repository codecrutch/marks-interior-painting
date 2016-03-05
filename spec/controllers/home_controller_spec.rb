require 'rails_helper'

FactoryGirl.describe HomeController, type: :controller do
  describe "GET #index" do
    it 'should return http status 200' do
      get :index
      expect(response).to have_http_status 200
    end
    it 'should populate photos array' do
      one = FactoryGirl.create(:photo)
      two = FactoryGirl.create(:photo, title: 'A picture')
      get :index
      expect(assigns(:photos)).to eq [one, two]
    end
    it 'should populate testimonials array' do
      mark = FactoryGirl.create(:testimonial)
      centola = FactoryGirl.create(:testimonial)
      get :index
      expect(assigns(:testimonials)).to eq [mark, centola]
    end
  end
end
