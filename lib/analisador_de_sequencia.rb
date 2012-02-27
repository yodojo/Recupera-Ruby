#encoding: UTF-8
require 'instancia'

class AnalisadorDeSequencia

  attr_reader :instancias
  
  def initialize(entrada)
  	transforma_em_array_de_instancia_a entrada
  end

  def analisa_entrada
    retorno = Array.new
    
    @instancias.each do |instancia|
     instancia.informa_numero_da_instancia numero_da_instancia
     retorno << instancia.analisa_sequencia
    end
    retorno    
  end

  def transforma_em_array_de_instancia_a entrada
    quantidade_de_numeros_da_sequencia = 0
    sequencia_numerica = Array.new
    @instancias = Array.new

    entrada.split("\n").each_with_index do |valor, indice|
      quantidade_de_numeros_da_sequencia = valor if indice % 2 == 0
      numero_da_instancia = indice + 1
      if indice % 2 != 0
        sequencia_numerica = valor.split(" ")
        @instancias << Instancia.new(quantidade_de_numeros_da_sequencia, sequencia_numerica, numero_da_instancia)
      end
    end
  end
end