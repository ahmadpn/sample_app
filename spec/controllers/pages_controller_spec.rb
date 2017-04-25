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
      assert_select 'title', "#{@base_title}"
    end
  end

  describe "Get 'help'" do

    it "has to be successful" do
      get :help
      expect(response).to be_success
    end

    it "has a right title" do
      get :help
      assert_select 'title', "Help | #{@base_title}"
    end
  end

  describe "Get 'about'" do

    it "has to be successful" do
      get :about
      expect(response).to be_success
    end

    it "has a right title" do
      get :about
      assert_select 'title', "About | #{@base_title}"
    end
  end

  describe "Get 'contact'" do

    it "has to be successful" do
      get :contact
      expect(response).to be_success
    end

    it "has a right title" do
      get :contact
      assert_select 'title', "Contact | #{@base_title}"
    end
  end

end