require 'spec_helper'

describe ArtistsController do
  let!(:artist) { create(:artist) }
  subject { artist }
  
  describe "GET #index" do
    it "populates an array of Artists" do
      get :index
      expect(assigns(:artists)).to match_array [artist]
    end
    
    it "renders the index.html.erb template" do
      get :index
      expect(response).to render_template :index
    end
    
    it "responds with a 200 OK status code" do
      get :index
      expect(response.response_code).to eq 200
    end
  end
  
  describe "GET #show" do
    context "with an existing artist" do
      it "assigns the requested artist to @artist" do
        get :show, id: artist.id
        expect(assigns(:artist)).to eq artist
      end
    
      it "renders the show.html.erb template" do
        get :show, id: artist.id
        expect(response).to render_template :show
      end
    
      it "responds with a 200 OK status code" do
        get :show, id: artist.id
        expect(response.response_code).to eq 200
      end
    end
    
    context "with a non-existant artist" do
      it "responds with an ActiveRecord::RecordNotFound error" do
        expect {
          get :show, id: "-1"
        }.to raise_error ActiveRecord::RecordNotFound
      end
    end
  end

  describe "DELETE #destroy" do
    context "with an existing artist" do
      before :each do
        @artist = create(:artist)
      end
  
      it "deletes the artist" do
        expect{ delete :destroy, id: @artist }.to change(Artist, :count).by(-1)
      end
    end
  end
end
