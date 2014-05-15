require 'spec_helper'

describe BubblesController do

  describe "GET index" do
    it "should render the index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "POST create" do
    it "should redirect to the index page" do
      post :create, :bubble => {:name => "my bubble", :feeling => "good"}
      expect(response).to redirect_to(bubbles_path)
    end
  end

  describe "GET new" do
    it "should render the new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end
end
