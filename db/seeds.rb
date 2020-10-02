# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Tipo.create!([
	{descricao: "Amigo"},
	{descricao: "Conhecido"},
	{descricao: "Cliente"},
	{descricao: "Fornecedor"}
])
puts "Popular tabela tipo [ok]..."

# for de 1 a 100 registro
100.times do |i|
	Contato.create!(
		nome: Faker::Name.name, 
		email: Faker::Internet.email, 
		tipo: Tipo.all.sample, 
		obs: LeroleroGenerator.sentence([1,2,3,4,5].sample])
	)
end
puts "Popular tabela Contato [ok]..."

# for utilizado a tabela de contatos
Contato.all.each do |c|
	Endereco.create!(
		cidade: Faker::Address.city,
      	bairro: Faker::Address.street_name,
      	cep: Faker::Address.zip,
      	rua: Faker::Address.street_name,
      	uf: Faker::Address.state_abbr,
      	contato: c
	)
end
puts "Popular tabela Endereço [ok]..."

# laço de repetiçao gerando numero aleatroios de insert
Contato.all.each do |_contato|
	Random.rand(1..2).times do |i|
		Telefone.create!(
			numero: Faker::PhoneNumber.cell_phone,
			contato: _contato
		)
	end
end
puts "Popular tabela Telefone [ok]..."

