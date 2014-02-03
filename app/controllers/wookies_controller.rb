class WookiesController < ApplicationController
  # GET /wookies
  # GET /wookies.json
  def index
    @wookies = Wooky.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wookies }
    end
  end

  # GET /wookies/1
  # GET /wookies/1.json
  def show
    @wooky = Wooky.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wooky }
    end
  end

  # GET /wookies/new
  # GET /wookies/new.json
  def new
    @wooky = Wooky.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wooky }
    end
  end

  # GET /wookies/1/edit
  def edit
    @wooky = Wooky.find(params[:id])
  end

  # POST /wookies
  # POST /wookies.json
  def create
    @wooky = Wooky.new(params[:wooky])

    respond_to do |format|
      if @wooky.save
        format.html { redirect_to @wooky, notice: 'Wooky was successfully created.' }
        format.json { render json: @wooky, status: :created, location: @wooky }
      else
        format.html { render action: "new" }
        format.json { render json: @wooky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wookies/1
  # PUT /wookies/1.json
  def update
    @wooky = Wooky.find(params[:id])

    respond_to do |format|
      if @wooky.update_attributes(params[:wooky])
        format.html { redirect_to @wooky, notice: 'Wooky was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wooky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wookies/1
  # DELETE /wookies/1.json
  def destroy
    @wooky = Wooky.find(params[:id])
    @wooky.destroy

    respond_to do |format|
      format.html { redirect_to wookies_url }
      format.json { head :no_content }
    end
  end
end
