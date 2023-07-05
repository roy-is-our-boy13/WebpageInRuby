require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.default_driver = :selenium_chrome

URL = 'http://127.0.0.1:4567/'

RSpec.configure do |config|
    config.include Capybara::DSL
end

RSpec.describe 'Hello, World!' do
    before(:each) do
        visit(URL)
    end

    it 'displays the correct greeting' do
        expect(page).to have_content('Hello, World!')
    end

    it 'clicks the button and displays the response' do
        click_button 'How are you doing?'
        expect(page).to have_content('You said: How are you doing?')
    end

end