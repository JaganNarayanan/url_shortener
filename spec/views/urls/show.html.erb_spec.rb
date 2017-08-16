require 'rails_helper'
feature 'Creating Short Url' do
  scenario 'can create a short url' do
    # 1. go to root where will be button to show a particular url:
    @url = Url.new(long_url: 'https://www.facebook.com/') #need this because the rspec runs on an empty database so we need a test instance otherwise the show button will not appear 
    @url.short_url = SecureRandom.base64[0..8]
    @url.save
    visit '/'
    # 2. click on Show
    click_link 'Show'
    # 3. Then we should be redirected to urls/show page to view details of long and short url
  # expect(page.body).to have_selector("input")
  # expect(page.body).to have_content("zoo")
    expect(page).to have_content("urls/show")
  end
end

# RSpec.describe "urls/show.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
