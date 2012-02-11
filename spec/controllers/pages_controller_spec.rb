require 'spec_helper'

describe PagesController do
  render_views

  # Check HOME page
  describe "GET 'home'" do
    
    # Check Respone
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    # Check Title
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end


  # Check CONTACT page
  describe "GET 'contact'" do
    
    # Check Respone
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    # Check Title
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

  # Check ABOUT page
  describe "GET 'about'" do
    
    # Check Respone
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    # Check Title
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                        :content =>
                          "Ruby on Rails Tutorial Sample App | About")
    end
  end
end
