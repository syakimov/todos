require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in
    visit root_path

    click_on 'Add a new todo'
    fill_in 'Title', with: 'Todo content'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'Todo content'
  end
end
