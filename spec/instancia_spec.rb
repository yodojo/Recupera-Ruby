#encoding: UTF-8
require 'instancia'

describe Instancia do
 
  it "deve ter o tamanho da sequencia igual ao tamanho informado no arquivo" do
    instancia = Instancia.new 2, [1, 2], 1
    instancia.tamanho_da_sequencia_igual_tamanho_informado?.should be true
  end

  it "deve ter resultado 0 quando não houver sequencia para somar" do
    instancia = Instancia.new 1, [9], 1
    instancia.analisa_sequencia.should == "Instância 1\n0"
  end

  it "deve retornar o próprio número quando sequencia de dois números são iguais" do
  	instancia = Instancia.new 2, [2,2], 1
  	instancia.analisa_sequencia.should == "Instância 1\n2"
	end

  it "deve retornar 'não achei' quando sequencia de dois números são diferentes" do
  	instancia = Instancia.new 2, [2,3], 1
  	instancia.analisa_sequencia.should == "Instância 1\nnão achei"
	end

	it "deve retornar o número da sequencia em que o resultado é a soma dos dois números anteriores" do
		instancia = Instancia.new 3, [1, 2, 3], 1
		instancia.analisa_sequencia.should == "Instância 1\n3"
	end

	it "deve retornar 'não achei' quando não achar número igual a soma dos dois números anteriores" do
		instancia = Instancia.new 3, [1, 2, 4], 1
		instancia.analisa_sequencia.should == "Instância 1\nnão achei"
	end

end
