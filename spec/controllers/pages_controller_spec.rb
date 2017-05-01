require 'rails_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "Get #home" do

    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "Get #help" do

    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end

  describe "Get #about" do

    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "Get #contact" do

    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end