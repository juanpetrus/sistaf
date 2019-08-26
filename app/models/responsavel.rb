class Responsavel < ApplicationRecord
  validates :nome, :cpf, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  
  def to_s
    nome
  end
end
