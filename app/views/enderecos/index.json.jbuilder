json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :cidade, :bairro, :cep, :rua, :uf, :contato_id
  json.url endereco_url(endereco, format: :json)
end
