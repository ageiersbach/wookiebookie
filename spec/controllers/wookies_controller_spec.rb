require 'spec_helper'

describe WookiesController do
   let!(:chewwie){ create(:wookie) }
   let!(:pogo){ create(:wookie, name:"Pogo")}

  describe "GET#index" do
    it "assigns all wookies as @wookies" do
      get :index
      expect(assigns(:wookies)).to eq([chewwie, pogo])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET#show" do

    it "assigns the requested wookie as @wookie" do
      get :show, id: pogo.id
      expect(assigns(:wooky)).to eq(pogo)
    end

  end

  describe "GET#new" do
    it "assigns a new wookie as @wookie" do
      get :new, {}
      expect(assigns(:wooky)).to be_a_new(Wooky)
    end
  end

  describe "GET edit" do
    it "assigns the requested wookie as @wookie" do
      get :edit, id: chewwie.id 
      expect(assigns(:wooky).name).to eq("Chewwie")
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Wookie" do
        expect {
          post :create, {:wooky => attributes_for(:wookie)}
        }.to change(Wooky, :count).by(1)
      end

      it "assigns a newly created wookie as @wookie" do
        post :create, {:wooky => attributes_for(:wookie)}
        expect(assigns(:wooky)).to be_a(Wooky)
        expect(assigns(:wooky)).to be_persisted
      end

      it "redirects to the created wookie" do
        post :create, {:wooky => attributes_for(:wookie)}
        expect(response).to redirect_to(Wooky.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved wookie as @wookie" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wooky.any_instance.stub(:save).and_return(false)
        post :create, {:wooky => {}}
        expect(assigns(:wooky)).to be_a_new(Wooky)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wooky.any_instance.stub(:save).and_return(false)
        post :create, {:wooky => {}}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      #TODO : check if valid test?

      it "located the requested @wookie" do
        expect(pogo).to eq(Wooky.find(pogo.id))
      end

      it "updates the requested wookie" do
        put :update, id: pogo, wooky: {name: "Chewwie"} 
        pogo.reload
        expect(pogo.name).to eq('Chewwie')
      end

      it "redirects to the wookie" do
        put :update, id: pogo 
        expect(response).to redirect_to(pogo)
      end
    end

    describe "with invalid params" do

      it "assigns the wookie as @wookie" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wooky.any_instance.stub(:save).and_return(false)
        put :update, id: pogo, :wooky => {}
        expect(assigns(:wooky)).to eq(pogo)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wooky.any_instance.stub(:save).and_return(false)
        put :update, id: pogo, :wooky => {}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do

    it "destroys the requested wookie" do
      expect {
        delete :destroy, id: pogo 
      }.to change(Wooky, :count).by(-1)
    end

    it "redirects to the wookies list" do
      delete :destroy, id: pogo 
      expect(response).to redirect_to(wookies_url)
    end
  end

end
