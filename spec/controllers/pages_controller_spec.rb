require 'rails_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "Get 'home'" do

    it "has to be successful" do
      get :home
      expect(response).to be_success
    end

    it "has a right title" do
      get :home
      expect(response.body).to have_selector('title', text: "Home | #{@base_title}", visible: false)
    end
  end

  describe "Get 'help'" do

    it "has to be successful" do
      get :help
      expect(response).to be_success
    end

    it "has a right title" do
      get :help
      expect(response.body).to have_selector('title', text: "Help | #{@base_title}", visible: false)
    end
  end

  describe "Get 'about'" do

    it "has to be successful" do
      get :about
      expect(response).to be_success
    end

    it "has a right title" do
      get :about
      expect(response.body).to have_selector('title', text: "About | #{@base_title}", visible: false)
    end
  end

  describe "Get 'contact'" do

    it "has to be successful" do
      get :contact
      expect(response).to be_success
    end

    it "has a right title" do
      get :contact
      expect(response.body).to have_selector('title', text: "Contact | #{@base_title}", visible: false)
    end
  end

end