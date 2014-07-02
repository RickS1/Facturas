class FacturasController < ApplicationController
  # GET /facturas
  # GET /facturas.json
  before_filter :authenticate_user!
  def index
    @facturas = Factura.all
    @facturas = current_user.facturas

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facturas }
    end
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show
    @factura = Factura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @factura }

    end
  end

  def descarga_pdf
    @factura = Factura.find(params[:id])
    send_file(@factura.pdf, :filename => "Factura_#{current_user.rfc}_#{@factura.folio}.pdf", :type => "application/pdf")
  end

  # GET /facturas/new
  # GET /facturas/new.json
  def new
    @factura = Factura.new
    @factura = current_user.facturas.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @factura }
    end
  end

  # GET /facturas/1/edit
  def edit
    @factura = Factura.find(params[:id])
  end

  # POST /facturas
  # POST /facturas.json
  def create
    @factura = Factura.new(params[:factura])
    @factura.user_id = current_user.id
    current_user.folio = current_user.folio + 1
    current_user.save
    @factura.folio = current_user.folio.to_s
    @articulos = Articulo.all
    @articulos = Articulo.joins(:articulos_facturas).where("articulos_facturas.ip_cliente" => request.remote_ip)
    @articulos_facturas = ArticulosFactura.where(:ip_cliente => request.remote_ip)
    html = File.read("#{Rails.root}/app/views/facturas/factura.html.erb")
    plantilla = ERB.new(html)
    kit = PDFKit.new(plantilla.result(binding))
    kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/css.css"
    arch = kit.to_file("#{Rails.root}/facts/factura_#{current_user.rfc}_#{current_user.folio}.pdf")
    @factura.pdf = "#{Rails.root}/facts/factura_#{current_user.rfc}_#{current_user.folio}.pdf"
    @articulos_facturas.each do |articulo|
      articulo.destroy
    end

    respond_to do |format|
      if @factura.save
        format.html { redirect_to @factura, notice: 'Factura emitida exitosamente.' }
        format.json { render json: @factura, status: :created, location: @factura }
      else
        format.html { render action: "new" }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facturas/1
  # PUT /facturas/1.json
  def update
    @factura = Factura.find(params[:id])

    respond_to do |format|
      if @factura.update_attributes(params[:factura])
        format.html { redirect_to @factura, notice: 'Factura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @factura = Factura.find(params[:id])
    @factura.destroy

    respond_to do |format|
      format.html { redirect_to facturas_url }
      format.json { head :no_content }
    end
  end
end
