class Tarefa < ApplicationRecord
  enum status: %i[Aberta Concluida]
  enum prioridade: %i[Critica Alta Media Baixa]
  
  belongs_to :responsavel
end
