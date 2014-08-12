require 'rails_helper'

RSpec.describe CardsController, :type => :controller do

  describe "GET index" do
    before do
      Card.create answer: "Yes!", question: "O Rly?"
    end
    it "returns http success" do
      get :index
      expect(assigns(:cards).size).to eq 1
    end
  end

end
