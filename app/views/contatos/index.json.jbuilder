json.array!(@contatos) do |contato|
  json.extract! contato, :id, :nome, :email, :tipo_id, :obs
  json.url contato_url(contato, format: :json)
end
