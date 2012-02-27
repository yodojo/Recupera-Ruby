#encoding: UTF-8

class Instancia

	attr_reader :quantidade_de_numeros_da_sequencia, :sequencia
  
  def initialize(quantidade_de_numeros_da_sequencia, sequencia, numero_da_instancia)
  	@quantidade_de_numeros_da_sequencia = quantidade_de_numeros_da_sequencia
  	@sequencia = sequencia
  	@retorno = "Instância #{numero_da_instancia}\n"
  end

  def tamanho_da_sequencia_igual_tamanho_informado?
  	@sequencia.size == @quantidade_de_numeros_da_sequencia
  end

  def analisa_entrada
  	verifica_se_a_sequencia_contem_numeros_para_somar
  	@retorno
  end

  def verifica_se_a_sequencia_contem_numeros_para_somar
  	@retorno << "0" if @sequencia.size < 2
  end

end