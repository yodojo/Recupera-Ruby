#encoding: UTF-8
require 'instancia'

describe Instancia do
 
   it "o tamanho da sequencia deve ser igual ao tamanho informado" do
     instancia = Instancia.new 2, [1, 2], 1
     instancia.tamanho_da_sequencia_igual_tamanho_informado?.should be true
   end

  it "o resultado da instancia deve ser 0 nao quando conter numeros para somar" do
    instancia = Instancia.new 1, [9], 1
    instancia.analisa_entrada.should == "Instância 1\n0"
  end

end
