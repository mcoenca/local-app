require 'spec_helper'

feature 'bubbles/new.html.haml', :js => true do
  scenario "displays correctly the time and date in French with feature" do
    visit new_bubble_path
    click_link('Fr')
    expect(page).to have_content 'mai'
  end
end
