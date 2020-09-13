class Carta

    attr_accessor :numero
    attr_accessor :pinta

    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

arregloCartas = ["","","","",""]

for i in 0..4
    
    numero_TEMP = [rand(13)].to_s
    arreglopinta_TEMP = ["C","D","T","E"]
    pinta_TEMP = arreglopinta_TEMP.sample

    crt = Carta.new(numero_TEMP,pinta_TEMP)

    arregloCartas.insert(i,crt)
end

puts arregloCartas