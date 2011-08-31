class Item < ActiveRecord::Base
  has_many :especificacaos
  belongs_to :categoria
  has_many:equipamentos, through=> :especificacaos
end
