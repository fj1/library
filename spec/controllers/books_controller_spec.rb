require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

  describe "GET show_all" do
    it "returns http success" do
      get :show_all
      expect(response).to be_success
    end
  end

end
