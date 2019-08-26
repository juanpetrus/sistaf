json.extract! tarefa, :id, :status, :titulo, :descricao, :responsavel_id, :data, :prioridade, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
