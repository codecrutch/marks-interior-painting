require 'rails_helper'

feature 'Admin adds a photo' do
  scenario 'login to admin and add a photo' do
    FactoryGirl.create(:admin, email: 'admin@site.com', password: 'p4ssw0rD')
    visit new_admin_session_path
    fill_in 'admin_email', with: 'admin@site.com'
    fill_in 'admin_password', with: 'p4ssw0rD'
    click_on 'Log in'

    visit new_photo_path

    fill_in 'photo_title', with: 'My Big Foot'
    fill_in 'photo_description', with: 'Daniel Day Lewis in My Left Foot'
    attach_file 'Image', File.join(Rails.root, 'spec/factories/images/rails.png')

    click_button 'Create Photo'
    expect(page).to have_http_status 200
  end
end
