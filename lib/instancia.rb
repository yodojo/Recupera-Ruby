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

  def analisa_sequencia
    verificacao_para_sequencia_de_um_numero	if @sequencia.size == 1
    verificacao_para_sequencia_de_dois_numeros if @sequencia.size == 2
    verificacao_para_sequencia_de_varios_numeros if @sequencia.size > 2
    @retorno
  end

  def verificacao_para_sequencia_de_um_numero
  	@retorno << "0"
  end

  def verificacao_para_sequencia_de_dois_numeros
    if @sequencia.first == @sequencia.last
      @retorno << @sequencia.first.to_s
    else
      @retorno << "não achei"
    end
  end

  def verificacao_para_sequencia_de_varios_numeros
    @sequencia.each_with_index do |numero_atual, indice|
      if soma_dos_numeros_anteriores(indice) == numero_atual
        return @retorno << numero_atual.to_s 
      end
    end
    @retorno << "não achei"
  end

  def soma_dos_numeros_anteriores indice
    @sequencia[indice -1] + @sequencia[indice -2] if indice > 1
  end

end