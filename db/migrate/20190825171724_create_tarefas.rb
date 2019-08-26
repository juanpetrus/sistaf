class CreateTarefas < ActiveRecord::Migration[5.2]
  def change
    create_table :tarefas do |t|
      t.integer :status
      t.string :titulo
      t.text :descricao
      t.references :responsavel, foreign_key: true
      t.date :data
      t.integer :prioridade

      t.integer :ativo
      t.timestamps
    end
  end
end
