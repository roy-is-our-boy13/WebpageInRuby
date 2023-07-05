require 'sinatra'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

RSpec.describe 'Hello World Application' do
  include Capybara::DSL

  before(:all) do
    @server_thread = Thread.new { Sinatra::Application.run! }
    sleep 1 # Wait for the server to start
  end

  after(:all) do
    Thread.kill(@server_thread)
  end

  it 'displays the greeting and triggers the alert' do
    visit('/')
    
    expect(page).to have_content('Hello, World!')

    

   

    fill_in 'greeting', with: 'Hello'
    click_button 'How are you doing?'
    
    expect(page.driver.browser.switch_to.alert.text).to eq('Good afternoon')
    page.driver.browser.switch_to.alert.accept

    
  end
end