require 'rails_helper'

RSpec.describe CatBlock::CatsController, type: :request do
  
  describe "GET /index" do
    it "returns http success" do
      get "/cat_block/cats"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/cat_block/cats" ,params: {name: "kiku"}
      expect(response).to have_http_status(:created)
    end
  end

  describe "DELETE /destroy" do
    it "returns http success" do
      delete "/cat_block/cats" ,params: {id: 1}
      expect(response).to have_http_status(:success)
    end
  end

end
