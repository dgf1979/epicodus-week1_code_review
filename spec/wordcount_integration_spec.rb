require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('Wordcount Integration Testing', {:type => :feature}) do
  #framework test
  it('verifies a test route is getting to a test layout page') do
    visit('/test')
    expect(page).to have_content('Sinatra OK')
  end

  # verifies that the results page includes the method output number
  it('returns the expected count when passed a parameter string where matching words include mixed case and punctuation') do
    visit('/')
    fill_in('search_word', :with => 'a_string')
    fill_in('search_in', :with => 'A_string, a_string, - my kingdom for A_STRING!')
    click_button('Send')
    expect(page).to have_content("3")
  end

  # verifies that the results page includes the search word
  it('has the word to e seach for on the page') do
    visit('/')
    fill_in('search_word', :with => 'a_string')
    fill_in('search_in', :with => 'A_string, a_string, - my kingdom for A_STRING!')
    click_button('Send')
    expect(page).to have_content("a_string")
  end

  # verifies that the results page includes the input that was searched
  it('has the string to be searched on the page') do
    visit('/')
    fill_in('search_word', :with => 'a_string')
    fill_in('search_in', :with => 'A_string, a_string, - my kingdom for A_STRING!')
    click_button('Send')
    expect(page).to have_content('A_string, a_string, - my kingdom for A_STRING!')
  end

end
