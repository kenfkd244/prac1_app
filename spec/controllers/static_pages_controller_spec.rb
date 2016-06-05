require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  render_views

  describe "GET #home" do
  	it "renders the home template" do
  		get :home
  		expect(response).to render_template("home")
      assert_select "title", "Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET #help" do
  	it "renders the help template" do
  		get :help
  		expect(response).to render_template("help")
  		assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  	end
  end

  describe "GET #about" do
  	it "renders the about template" do
  		get :about
  		expect(response).to render_template("about")
  		assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  	end
  end
end