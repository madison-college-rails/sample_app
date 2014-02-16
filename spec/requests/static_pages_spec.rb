require 'spec_helper'

describe "StaticPages" do
  let(:title) { "Ruby on Rails Tutorial Sample App | #{page_title}" }

  describe "Home page" do
    let(:page_title) { 'Home' }

    it "has the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "has the right title" do
      visit '/static_pages/home'
      expect(page).to have_title(title)
    end
  end

  describe "Help page" do
    let(:page_title) { 'Help' }

    it "has the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "has the right title" do
      visit '/static_pages/help'
      expect(page).to have_title(title)
    end
  end

  describe "About page" do
    let(:page_title) { 'About Us' }

    it "has the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "has the right title" do
      visit '/static_pages/about'
      expect(page).to have_title(title)
    end
  end

  describe "Contact page" do
    let(:page_title) { 'Contact' }

    it "has the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "has the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title(title)
    end
  end
end
