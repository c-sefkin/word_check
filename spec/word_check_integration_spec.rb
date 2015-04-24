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
    expect(page).to have_content (2)
  end
end

## I could not get this integration spec to work, and kept getting the following
##error: Failure/Error: expect(page).to have_content(2)
#expected to find text "2" in "Welcome to Word Check! Type in a word! Type in a sentence! Send"
# ./spec/word_check_integration_spec.rb:13:in `block (2 levels) in <top (required)>'
#The program works however
