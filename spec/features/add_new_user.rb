require 'rails_helper'

describe 'the add a user process' do
  it 'adds a new user' do
    visit root_path
    click_on 'Sign Up'
    fill_in 'Name', :with => "Prince"
    fill_in 'Username', :with => "formallyknownas"
    fill_in 'Email', :with => "theone@aol.com"
    fill_in 'Password', :with => "redcorvette"
    fill_in 'Password Confirmation', :with => "redcorvette"
    click_on 'Sign Up'
    expect(page).to have_content 'Welcome'
  end
