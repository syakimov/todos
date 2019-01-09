require 'rails_helper'

feature 'User sess own todos' do
  scenario "user does not see others' todos" do
    Todo.create!(title: 'Todo Title', email: 'someone_else@example.com')

    sign_in_as 'me@example.com'

    expect(page).not_to have_css '.todos li', text: 'Todo Title'
  end
end

