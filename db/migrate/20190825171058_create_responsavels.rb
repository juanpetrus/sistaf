class CreateResponsavels < ActiveRecord::Migration[5.2]
  def change
    create_table :responsavels do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      
      t.integer :ativo
      t.timestamps
    end
  end
end
