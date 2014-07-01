class ArticulosFactura < ActiveRecord::Base

   belongs_to :articulo
   belongs_to :factura
end
