require 'spec_helper'

describe BetsController do

  describe "GET#index" do
    it "assigns all bets as @bets" do
      bets = create(:bet)
      get :index
      expect(assigns(:bets)).to eq([bets])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET#show" do
    it "assigns the requested bet as @bet" do
      bet = create(:bet)
      get :show, id: bet 
      expect(assigns(:bet)).to eq(bet)
    end

    it "renders the #show view" do
      get :show, id: create(:bet)
      expect(response).to render_template(:show)
    end
  end

  describe "GET#new" do
    it "assigns a new bet as @bet" do
      get :new, {}
      expect(assigns(:bet)).to be_a_new(Bet)
    end
  end

  describe "GET#edit" do
    it "assigns the requested bet as @bet" do
      bet = create(:bet)
      get :edit, id: bet
      expect(assigns(:bet)).to eq(bet)
    end
  end

  describe "POST#create" do
    describe "with valid params" do
      it "creates a new Bet" do
        expect {
          post :create, bet: attributes_for(:bet)
        }.to change(Bet, :count).by(1)
      end

      it "assigns a newly created bet as @bet" do
       post :create, bet: attributes_for(:bet)
       expect(assigns(:bet)).to have_attribute(:owner)
      end

      it "redirects to the created bet" do
        post :create, bet: attributes_for(:bet) 
        expect(response).to redirect_to(Bet.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved bet as @bet" do
        Bet.any_instance.stub(:save).and_return(false)
        post :create, bet: {} 
        expect(assigns(:bet)).to be_a_new(Bet)
      end 

      it "re-renders the 'new' template" 
    end
  end

  describe "PUT#update" do
    before :each do
      @bet = create(:bet, amount: 100.00, owner: "Luke Skywalker")
    end
    describe "with valid params" do
     
      it "located the requested @bet" do
        put :update, id: @bet, bet: attributes_for(:bet)
      end 

      it "updates the requested bet" do
        put :update, id: @bet, bet: attributes_for(:bet)
        @bet.reload
        expect(@bet.amount).to eq('50.00'.to_d)
        expect(@bet.owner).to eq("Darth Vader")
      end

      it "redirects to the bet" do
        put :update, id: @bet, bet: attributes_for(:bet)
        expect(response).to redirect_to(@bet)
      end
    end
    
    #TODO controller currently doesn't check if attribs are valid
    describe "with invalid params" do
      it "assigns the bet as @bet" 

      it "re-renders the 'edit' template" 
    end
  end

  describe "DELETE#destroy" do

    before :each do
      @bet = create(:bet)
    end

    it "destroys the requested bet" do
      expect {
        delete :destroy, id: @bet
      }.to change(Bet, :count).by(-1)
    end

    it "redirects to the bets list" do
      delete :destroy, id: @bet
      expect(response).to redirect_to bets_url
    end
  end

end
