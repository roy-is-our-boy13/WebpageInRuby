require 'sinatra'
require 'capybara/rspec'

get '/' do
  erb :index
end

RSpec.describe 'Hello World Application' do
  include Capybara::DSL

  before(:all) do
    Capybara.app = Sinatra::Application.new
  end

  it 'displays the greeting' do
    visit '/'
    expect(page).to have_content('Hello, World!')
  end

  it 'displays a question' do
    visit '/'
    expect(page).to have_text('How are you doing?')
  end
end