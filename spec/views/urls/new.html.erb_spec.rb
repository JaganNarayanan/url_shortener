require 'rails_helper'

# RSpec.describe "urls/new.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

feature 'Creating Short Url' do
  scenario 'can create a short url' do
    # 1. go to root where will be button to Add New Book:
    visit 'urls/new'
    # 2. Fill form - add url
    fill_in 'url[long_url]', with: 'https://www.facebook.com/'
    # 3. Click on submit form button
    click_button 'Shorten URL!'
    # 4. Then we should be redirected to show page with url details (short url)
    expect(page).to have_content('https://www.facebook.com/')
  end
end
