class BuketsController < ApplicationController
  # GET /bukets
  # GET /bukets.json
  def index
    @bukets = Buket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bukets }
    end
  end

  # GET /bukets/1
  # GET /bukets/1.json
  def show
    @buket = Buket.find(params[:id])
    @many = @buket.quantity * @buket.prise
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @buket }
    end
  end

  # GET /bukets/1
  # GET /bukets/1.json
  def new
    @buket = Buket.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buket }
    end
  end

  # GET /bukets/1/edit
  def edit
    @buket = Buket.find(params[:id])
  end

  # POST /bukets
  # POST /bukets.json
  def create
    @buket = Buket.new(params[:buket])

    respond_to do |format|
      if @buket.save
        format.html { redirect_to @buket, notice: 'buket.' }
        format.json { render json: @buket, status: :created, location: @buket }
      else
        format.html { render action: "new" }
        format.json { render json: @buket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bukets/1
  # PUT /bukets/1.json
  def update
    @buket = Buket.find(params[:id])

    respond_to do |format|
      if @buket.update_attributes(params[:buket])
        format.html { redirect_to @buket, notice: 'mother was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buket/1
  # DELETE /bukets/1.json
  def destroy
    @buket = Buket.find(params[:id])
    @buket.destroy

    respond_to do |format|
      format.html { redirect_to bukets_url }
      format.json { head :no_content }
    end
  end
  
  def cost
  @buket = Buket.find(params[:id])
    @many = @buket.quantity * @buket.prise
  end
end

