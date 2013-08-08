require 'spec_helper'

describe EntriesController do
  render_views
  
  describe "GET 'frontpage'" do
    it "should render frontpage with :show" do
      get 'frontpage'
      response.should be_success
      response.should render_template("show")
    end
  end
end