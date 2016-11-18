require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('return how frequently a word appears in a given string') do
    visit('/')
    fill_in('string', :with => "If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")
    fill_in('word', :with => "peck")
    click_button('Check')
    expect(page).to have_content('2')
  end
end
