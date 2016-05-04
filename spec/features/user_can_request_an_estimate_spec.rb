require 'rails_helper'

feature 'User can request an estimate' do
  scenario 'clicking on button' do
    visit root_path
    click_on 'Request a Free Estimate'

    expect(page).to have_css 'h1', text: 'Request a Free Estimate'
  end
end
