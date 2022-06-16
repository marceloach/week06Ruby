=begin 
  GUIA: PRINCIPIO DE ENCAPSULACIÓN

  EJERCICIO:
  Un programador poco experimentado con Ruby nos entregó el siguiente código:

  class Empresa
    def nombre
      @nombre
    end

    def direccion
      @direcion
    end

    def direccion=(direccion)
      @direccion = direccion
    end
  end

  La idea de esto es simplificar el código ocupando attr_reader, attr_writer y attr_accessor según corresponda.
=end

class Business
  attr_reader   :name
  attr_accessor :address
end

company = Business.new
company.address = "Calle Arica 324"
puts company.address