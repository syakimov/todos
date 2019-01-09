require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Todo content'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'Todo content'
  end
end
