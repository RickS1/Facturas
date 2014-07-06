class ArticulosFactura < ActiveRecord::Base

   belongs_to :articulo
   belongs_to :user

   attr_accessible :articulo_id,:cantidad, :tags_attributes

   validates_presence_of :articulo_id
   validates_presence_of :cantidad, :message => "No puede estar vacío."
   validates_numericality_of :cantidad, :greater_than => 0, :message => "debe ser un valor numérico mayor que 0."
end
