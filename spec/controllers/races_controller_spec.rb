require 'spec_helper'

describe RacesController do
  let!(:race) { create(:race, location: "Boston")}

  describe "GET#index" do
    it "assigns all races as @races" do
      get :index
      expect(assigns(:races)).to eq([race])
    end
  end

  describe "GET#show" do
    it "assigns the requested race as @race" do
      get :show, id: race
      expect(assigns(:race)).to eq(race)
    end
  end

  describe "GET new" do
    it "assigns a new race as @race" do
      get :new, {}
      expect(assigns(:race)).to be_a_new(Race)
    end
  end

  describe "GET edit" do
    it "assigns the requested race as @race" do
      race = create(:race)
      get :edit, id: race
      expect(assigns(:race)).to eq(race)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Race" do
        expect {
          post :create, {:race => attributes_for(:race)}
        }.to change(Race, :count).by(1)
      end

      it "assigns a newly created race as @race" do
        post :create, {:race => attributes_for(:race)}
        expect(assigns(:race)).to be_a(Race)
        expect(assigns(:race)).to be_persisted
      end

      it "redirects to the created race" do
        post :create, {:race => attributes_for(:race)}
        expect(response).to redirect_to(Race.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved race as @race" do
        # Trigger the behavior that occurs when invalid params are submitted
        Race.any_instance.stub(:save).and_return(false)
        post :create, {:race => {}}
        expect(assigns(:race)).to be_a_new(Race)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Race.any_instance.stub(:save).and_return(false)
        post :create, {:race => {}}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do

    describe "with valid params" do
      
      it "located the requested @race" do
        put :update, id: race, race: attributes_for(:race)
        expect(assigns(:race)).to eq(race)
      end

      it "assigns the requested race as @race" do
        put :update, {:id => race, :race => attributes_for(:race)}
        expect(assigns(:race)).to eq(race)
      end

      it "redirects to the race" do
        put :update, {:id => race, :race => attributes_for(:race)} 
        expect(response).to redirect_to(race)
      end
    end

    describe "with invalid params" do
      it "assigns the race as @race" do
        # Trigger the behavior that occurs when invalid params are submitted
        Race.any_instance.stub(:save).and_return(false)
        put :update, {:id => race, :race => {}}
        expect(assigns(:race)).to eq(race)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Race.any_instance.stub(:save).and_return(false)
        put :update, {:id => race, :race => {}}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested race" do
      expect {
        delete :destroy, id: race
      }.to change(Race, :count).by(-1)
    end

    it "redirects to the races list" do
      delete :destroy, id: race
      expect(response).to redirect_to(races_url)
    end
  end

end
