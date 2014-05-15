require 'spec_helper'

describe Bubble do

  # make sure there is nothing in the db
  before do
    Bubble.delete_all
  end

  # make sure the db can create the bubble record
  it "should be able to create a bubble" do
    Bubble.create(:name => "my bubble")
    expect(Bubble.count).to eq(1)
    expect(Bubble.first.name).to eq("my bubble")
  end
end
