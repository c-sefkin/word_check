require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_check path', {:type => :feature}) do
  it ('processes the user entries and returns how many time a key word is found
  in a sentence') do
    visit('/')
    fill_in('first_word', :with => 'Coding')
    fill_in('sentence', :with => 'I love coding, and Coding even more!')
    click_button('Send')
    expect(page).to have_content('2')
  end
end
