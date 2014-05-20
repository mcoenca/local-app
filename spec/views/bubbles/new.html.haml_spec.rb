require 'spec_helper'

describe 'bubbles/new.html.haml' do
  it "displays correctly the time and date in French" do
    I18n.locale = :fr
    assign(:bubble, Bubble.create(name: 'Bubly'))
    render
    expect(rendered).to have_content 'mai'
  end

  it "displays correctly the submit button in french" do
    I18n.locale = :fr
    assign(:bubble, Bubble.create(name: 'Bubly'))
    render
    expect(rendered).to have_selector("input[type=submit][value='Souffle !']")
  end
end
