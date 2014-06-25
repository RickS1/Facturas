class SucursalsController < ApplicationController
  # GET /sucursals
  # GET /sucursals.json
  def index
    @sucursals = Sucursal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sucursals }
    end
  end

  # GET /sucursals/1
  # GET /sucursals/1.json
  def show
    @sucursal = Sucursal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sucursal }
    end
  end

  # GET /sucursals/new
  # GET /sucursals/new.json
  def new
    @sucursal = Sucursal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sucursal }
    end
  end

  # GET /sucursals/1/edit
  def edit
    @sucursal = Sucursal.find(params[:id])
  end

  # POST /sucursals
  # POST /sucursals.json
  def create
    @sucursal = Sucursal.new(params[:sucursal])

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to @sucursal, notice: 'Sucursal was successfully created.' }
        format.json { render json: @sucursal, status: :created, location: @sucursal }
      else
        format.html { render action: "new" }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sucursals/1
  # PUT /sucursals/1.json
  def update
    @sucursal = Sucursal.find(params[:id])

    respond_to do |format|
      if @sucursal.update_attributes(params[:sucursal])
        format.html { redirect_to @sucursal, notice: 'Sucursal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursals/1
  # DELETE /sucursals/1.json
  def destroy
    @sucursal = Sucursal.find(params[:id])
    @sucursal.destroy

    respond_to do |format|
      format.html { redirect_to sucursals_url }
      format.json { head :no_content }
    end
  end
end
