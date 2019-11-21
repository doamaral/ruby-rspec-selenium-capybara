require 'selenium-webdriver'

#rspec --tag status:'ready' .\spec\test_selenium_capybara.rb

describe 'opening website' do
    example 'opening google', :status => 'not-ready' do
        visit "https://google.com"
    end

    example 'interacting with browser elements :id, :tag_name, send_keys', :status => 'not-ready' do
        
    end

    example 'interacting with browser elements :class', :status => 'ready' do
        visit "/login"
        fill_in "username", with: "tomsmith"
        fill_in "password", with: "SuperSecretPassword!"
        click_on "Login"

        expect(page).to have_content "You logged into a secure area!"
    end
end