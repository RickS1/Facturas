class ArticulosFacturasController < ApplicationController
  # GET /articulos_facturas
  # GET /articulos_facturas.json
  before_filter :authenticate_user!
  def index
    @articulos_facturas = ArticulosFactura.joins(:articulo,:user).where(:ip_cliente => request.remote_ip,:user_id => current_user.id)
    @articulos = Articulo.joins(:articulos_facturas).where("articulos_facturas.ip_cliente" => request.remote_ip)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articulos_facturas }
    end
  end

  # GET /articulos_facturas/1
  # GET /articulos_facturas/1.json
  def show
    @articulos_factura = ArticulosFactura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @articulos_factura }
    end
  end

  # GET /articulos_facturas/new
  # GET /articulos_facturas/new.json
  def new
    @articulos_factura = ArticulosFactura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @articulos_factura }
    end
  end

  # GET /articulos_facturas/1/edit
  def edit
    @articulos_factura = ArticulosFactura.find(params[:id])
  end

  # POST /articulos_facturas
  # POST /articulos_facturas.json
  def create
    @articulos_factura = ArticulosFactura.new(params[:articulos_factura])
    @articulos_factura.ip_cliente = request.remote_ip
    @articulos_factura.user_id = current_user.id

    respond_to do |format|
      if @articulos_factura.save
        format.html { redirect_to @articulos_factura, notice: 'Articulo añadido a la factura exitosamente.' }
        format.json { render json: @articulos_factura, status: :created, location: @articulos_factura }
      else
        format.html { render action: "new" }
        format.json { render json: @articulos_factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articulos_facturas/1
  # PUT /articulos_facturas/1.json
  def update
    @articulos_factura = ArticulosFactura.find(params[:id])

    respond_to do |format|
      if @articulos_factura.update_attributes(params[:articulos_factura])
        format.html { redirect_to @articulos_factura, notice: 'Articulo modificado exitosamente para facturar.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @articulos_factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos_facturas/1
  # DELETE /articulos_facturas/1.json
  def destroy
    @articulos_factura = ArticulosFactura.find(params[:id])
    @articulos_factura.destroy

    respond_to do |format|
      format.html { redirect_to articulos_facturas_url }
      format.json { head :no_content }
    end
  end
end
