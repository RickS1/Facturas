class SubcuentaController < ApplicationController
  # GET /subcuenta
  # GET /subcuenta.json
  def index
    @subcuenta = Subcuentum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subcuenta }
    end
  end

  # GET /subcuenta/1
  # GET /subcuenta/1.json
  def show
    @subcuentum = Subcuentum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subcuentum }
    end
  end

  # GET /subcuenta/new
  # GET /subcuenta/new.json
  def new
    @subcuentum = Subcuentum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subcuentum }
    end
  end

  # GET /subcuenta/1/edit
  def edit
    @subcuentum = Subcuentum.find(params[:id])
  end

  # POST /subcuenta
  # POST /subcuenta.json
  def create
    @subcuentum = Subcuentum.new(params[:subcuentum])

    respond_to do |format|
      if @subcuentum.save
        format.html { redirect_to @subcuentum, notice: 'Subcuenta creada con éxito.' }
        format.json { render json: @subcuentum, status: :created, location: @subcuentum }
      else
        format.html { render action: "new" }
        format.json { render json: @subcuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subcuenta/1
  # PUT /subcuenta/1.json
  def update
    @subcuentum = Subcuentum.find(params[:id])

    respond_to do |format|
      if @subcuentum.update_attributes(params[:subcuentum])
        format.html { redirect_to @subcuentum, notice: 'Subcuenta modificada con éxito.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subcuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcuenta/1
  # DELETE /subcuenta/1.json
  def destroy
    @subcuentum = Subcuentum.find(params[:id])
    @subcuentum.destroy

    respond_to do |format|
      format.html { redirect_to subcuenta_url }
      format.json { head :no_content }
    end
  end
end
