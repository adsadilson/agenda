json.array!(@telefones) do |telefone|
  json.extract! telefone, :id, :numero, :contato_id
  json.url telefone_url(telefone, format: :json)
end
