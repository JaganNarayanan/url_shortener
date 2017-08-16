require 'rails_helper'

# RSpec.describe "urls/index.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
feature 'Creating Short Url' do
  # scenario 'can create a short url' do
  #   # 1. go to root where will be button to Add New Book:
  #   visit '/'
  #   # 2. click on Add New Book button
  #   click_link 'Shorten a Url!'
  #   # 3. Then we should be redirected to urls/new page to create short url
  # # expect(page.body).to have_selector("input")
  # # expect(page.body).to have_content("zoo")
  # expect(page).to have_selector("input")
  # end

  scenario 'can create a short url' do
    # 1. go to root where will be button to Add New Book:
    visit '/'
    # 2. click on Add New Book button
    click_link 'Shorten a Url!'
    # 3. Then we should be redirected to urls/new page to create short
    expect(page.body).to have_css("input", count: 2)
  # expect(page).to have_selector("input")
  end
end
