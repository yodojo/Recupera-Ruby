#encoding: UTF-8
require 'analisador_de_sequencia'

describe AnalisadorDeSequencia do
  before (:each) do
  	entrada = "1\n0\n7\n1 2 3 4 5 6 7"
    @analisador_de_sequencia = AnalisadorDeSequencia.new(entrada)
  end
 
 it "deve retornar um array com duas instancias" do
 	@analisador_de_sequencia.instancias.size.should be 2
 end

end
