class CuentaBancaria

    attr_accessor :nombre_usuario
    attr_reader :numero_cuenta
    attr_accessor :cuenta_vip

    def initialize(nombre_usuario, numero_cuenta, cuenta_vip = 0)

        arreglo_TEMP = numero_cuenta.digits
        cuenta_TEMP = arreglo_TEMP.count

        raise RangeError, "Argument numero de cuenta is of type #{numero_cuenta} " if cuenta_TEMP != 8
        
        @nombreusuario = nombre_usuario
        @numerocuenta = numero_cuenta
        @cuentavip = cuenta_vip

    end

    def numero_de_cuenta()

        if @cuentavip == 1
            puts "1-" + @numerocuenta.to_s
        elsif @cuentavip == 0
            puts "0-" + @numerocuenta.to_s
        end
    end
end


prueba1 = CuentaBancaria.new("JuanCarlos",12345678,0)
prueba1.numero_de_cuenta()

prueba2 = CuentaBancaria.new("JuanCarlos2",12345679,1)
prueba2.numero_de_cuenta()

prueba3 = CuentaBancaria.new("JuanCarlos3",12345677)
prueba3.numero_de_cuenta()