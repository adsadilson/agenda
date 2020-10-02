class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :cidade
      t.string :bairro
      t.string :cep
      t.string :rua
      t.string :uf
      t.references :contato, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
