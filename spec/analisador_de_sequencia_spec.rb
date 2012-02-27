#encoding: UTF-8
require 'analisador_de_sequencia'

describe AnalisadorDeSequencia do
  before (:each) do
  	entrada = "1\n0\n7\n1 2 3 4 5 6 7\n4\n1 1 1 8"
    @analisador_de_sequencia = AnalisadorDeSequencia.new(entrada)
  end
 
 it "deve retornar um array com duas instancias" do
 	@analisador_de_sequencia.instancias.size.should be 3
 end

 it "deve retornar 0 para instância 1" do
 	resultado = @analisador_de_sequencia.analisa_entrada
 	resultado.first.should == "Instância 1\n0"
 end

 it "deve retornar 3 para instância 2" do
 	resultado = @analisador_de_sequencia.analisa_entrada
 	resultado[1].should == "Instância 2\n3"
 end

 it "deve retornar 'não achei' para instância 3" do
 	resultado = @analisador_de_sequencia.analisa_entrada
 	resultado.last.should == "Instância 3\nnão achei"
 end

end
