class Contato < ActiveRecord::Base
  belongs_to :tipo
  has_one :endereco
  has_many :telefones

  accepts_nested_attributes_for :endereco
  accepts_nested_attributes_for :telefones
end
