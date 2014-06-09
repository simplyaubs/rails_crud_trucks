require 'spec_helper'

feature 'CRUD favorite trucks' do
  scenario 'User can create a list of trucks' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a truck'
    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Ranger'
    click_on 'Add truck'
    expect(page).to have_content 'Ford'
    expect(page).to have_content 'Ranger'
  end
end